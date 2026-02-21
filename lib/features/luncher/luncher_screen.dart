import 'package:fast_driver_app/core/core.dart';
import 'package:fast_driver_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:video_player/video_player.dart';

import 'widgets/local_selection_button.dart';

class LauncherScreen extends HookConsumerWidget {
  const LauncherScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final videoController = useMemoized(
      () => VideoPlayerController.asset(Assets.videos.luncherBg),
      [],
    );
    final isVideoReady = useState(false);

    useEffect(() {
      var isDisposed = false;

      Future<void> initializeVideo() async {
        await videoController.setLooping(true);
        await videoController.setVolume(0);
        await videoController.initialize();
        if (isDisposed) return;
        isVideoReady.value = true;
        await videoController.play();
      }

      initializeVideo();

      return () {
        isDisposed = true;
        videoController.dispose();
      };
    }, [videoController]);

    final size = MediaQuery.sizeOf(context);

    final videoHeight = size.height / 2;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        fit: StackFit.passthrough,
        children: [
          Positioned(
            top: size.height / 5,
            left: 0,
            right: 0,
            height: videoHeight,
            child: ColoredBox(
              color: AppColors.blackBack,
              child: isVideoReady.value
                  ? ClipRect(
                      child: SizedBox.expand(
                        child: FittedBox(
                          fit: BoxFit.cover,
                          child: SizedBox(
                            width: videoController.value.size.width,
                            height: videoController.value.size.height,
                            child: VideoPlayer(videoController),
                          ),
                        ),
                      ),
                    )
                  : const SizedBox.shrink(),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: videoHeight,
            child: IgnorePointer(
              child: ColoredBox(
                color: AppColors.blackBack.withValues(alpha: 0.25),
              ),
            ),
          ),

          Positioned(
            top: size.height / 2 - 200,
            right: 0,
            child: LocalSelectionButton(),
          ),

          Positioned.fill(
            child: SafeArea(
              child: Padding(
                padding: AppSpace.pagePadding,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppSpace.v4,
                    Assets.logos.appLogoWhite.image(
                      width: 343,
                      fit: BoxFit.contain,
                    ),
                    AppSpace.vertical(270),
                    Text(
                      'Welcome to AmbuFast',
                      style: AppTextStyles.titleXL.bold.colorWhite(),
                    ),
                    AppSpace.v3,
                    Text(
                      'The Technology to Save Lives Fast',
                      style: AppTextStyles.bodyLG.colorWhite(),
                    ),
                    AppSpace.v12,
                    AppButton.filled(
                      onPressed: () {},
                      color: AppColors.primary50,
                      textColor: AppColors.primary,
                      text: 'Login',
                    ),
                    AppSpace.v4,
                    AppButton.filled(
                      onPressed: () {},
                      text: 'Create Account',
                    ),
                    Spacer(),
                    FooterDeclaration(
                      brightness: Brightness.dark,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
