package io.flutter.plugins;

import android.support.annotation.Keep;
import android.support.annotation.NonNull;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.embedding.engine.plugins.shim.ShimPluginRegistry;

/**
 * Generated file. Do not edit.
 * This file is generated by the Flutter tool based on the
 * plugins that support the Android platform.
 */
@Keep
public final class GeneratedPluginRegistrant {
  public static void registerWith(@NonNull FlutterEngine flutterEngine) {
    ShimPluginRegistry shimPluginRegistry = new ShimPluginRegistry(flutterEngine);
      xyz.luan.audioplayers.AudioplayersPlugin.registerWith(shimPluginRegistry.registrarFor("xyz.luan.audioplayers.AudioplayersPlugin"));
    flutterEngine.getPlugins().add(new io.flutter.plugins.pathprovider.PathProviderPlugin());
      io.flutter.plugins.videoplayer.VideoPlayerPlugin.registerWith(shimPluginRegistry.registrarFor("io.flutter.plugins.videoplayer.VideoPlayerPlugin"));
  }
}
