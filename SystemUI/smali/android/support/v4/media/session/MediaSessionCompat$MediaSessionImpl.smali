.class interface abstract Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;
.super Ljava/lang/Object;
.source "MediaSessionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "MediaSessionImpl"
.end annotation


# virtual methods
.method public abstract getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;
.end method

.method public abstract getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;
.end method

.method public abstract release()V
.end method

.method public abstract setPlaybackToLocal(I)V
.end method

.method public abstract setPlaybackToRemote(Landroid/support/v4/media/VolumeProviderCompat;)V
.end method
