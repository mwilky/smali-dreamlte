.class public interface abstract Lcom/samsung/systemui/splugins/aod/PluginAODMusicContentManager;
.super Ljava/lang/Object;
.source "PluginAODMusicContentManager.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/aod/PluginAODBaseManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/systemui/splugins/aod/PluginAODMusicContentManager$Callback;
    }
.end annotation


# virtual methods
.method public abstract clear()V
.end method

.method public abstract isMusicControllerDisabled()Z
.end method

.method public abstract setAppName(Ljava/lang/String;)V
.end method

.method public abstract setCallback(Lcom/samsung/systemui/splugins/aod/PluginAODMusicContentManager$Callback;)V
.end method

.method public abstract setMetadata(Landroid/media/MediaMetadata;)V
.end method

.method public abstract setPlaybackState(Landroid/media/session/PlaybackState;)V
.end method

.method public abstract setSessionEnabled(Z)V
.end method
