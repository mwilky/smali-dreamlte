.class Landroid/support/v4/media/MediaPlayer2Impl$22;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnDrmConfigHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaPlayer2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaPlayer2Impl;

.field final synthetic val$listener:Landroid/support/v4/media/MediaPlayer2$OnDrmConfigHelper;


# virtual methods
.method public onDrmConfig(Landroid/media/MediaPlayer;)V
    .locals 4

    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$22;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-static {v0}, Landroid/support/v4/media/MediaPlayer2Impl;->access$100(Landroid/support/v4/media/MediaPlayer2Impl;)Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->getSourceForPlayer(Landroid/media/MediaPlayer;)Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSource;->getDSD()Landroid/support/v4/media/DataSourceDesc;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Landroid/support/v4/media/MediaPlayer2Impl$22;->val$listener:Landroid/support/v4/media/MediaPlayer2$OnDrmConfigHelper;

    iget-object v3, p0, Landroid/support/v4/media/MediaPlayer2Impl$22;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-interface {v2, v3, v1}, Landroid/support/v4/media/MediaPlayer2$OnDrmConfigHelper;->onDrmConfig(Landroid/support/v4/media/MediaPlayer2;Landroid/support/v4/media/DataSourceDesc;)V

    return-void
.end method
