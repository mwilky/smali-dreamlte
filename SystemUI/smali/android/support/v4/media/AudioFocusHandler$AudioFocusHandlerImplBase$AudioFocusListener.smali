.class Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;
.super Ljava/lang/Object;
.source "AudioFocusHandler.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioFocusListener"
.end annotation


# instance fields
.field private mPlayerDuckingVolume:F

.field private mPlayerVolumeBeforeDucking:F

.field final synthetic this$0:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object v0, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;

    invoke-static {v0}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->access$500(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;)Landroid/support/v4/media/MediaSession2;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/MediaSession2;->pause()V

    iget-object v0, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;

    invoke-static {v0}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->access$200(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->access$602(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;Z)Z

    monitor-exit v1

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_1
    iget-object v1, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;

    invoke-static {v1}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->access$500(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;)Landroid/support/v4/media/MediaSession2;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/media/MediaSession2;->pause()V

    iget-object v1, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;

    invoke-static {v1}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->access$200(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;

    invoke-static {v2, v0}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->access$602(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;Z)Z

    monitor-exit v1

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :pswitch_2
    iget-object v1, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;

    invoke-static {v1}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->access$200(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_2
    iget-object v2, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;

    invoke-static {v2}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->access$400(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;)Landroid/support/v4/media/AudioAttributesCompat;

    move-result-object v2

    if-nez v2, :cond_0

    monitor-exit v1

    goto/16 :goto_2

    :cond_0
    iget-object v2, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;

    invoke-static {v2}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->access$400(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;)Landroid/support/v4/media/AudioAttributesCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/media/AudioAttributesCompat;->getContentType()I

    move-result v2

    if-ne v2, v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;

    invoke-static {v0}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->access$500(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;)Landroid/support/v4/media/MediaSession2;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/MediaSession2;->pause()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;

    invoke-static {v0}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->access$500(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;)Landroid/support/v4/media/MediaSession2;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/MediaSession2;->getPlayer()Landroid/support/v4/media/BaseMediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/support/v4/media/BaseMediaPlayer;->getPlayerVolume()F

    move-result v2

    const v3, 0x3e4ccccd    # 0.2f

    mul-float/2addr v3, v2

    iget-object v4, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;

    invoke-static {v4}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->access$200(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    iput v2, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->mPlayerVolumeBeforeDucking:F

    iput v3, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->mPlayerDuckingVolume:F

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v0, v3}, Landroid/support/v4/media/BaseMediaPlayer;->setPlayerVolume(F)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_0

    :catchall_2
    move-exception v5

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v5

    :cond_2
    :goto_0
    monitor-exit v1

    goto :goto_2

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    :cond_3
    iget-object v1, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;

    invoke-static {v1}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->access$500(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;)Landroid/support/v4/media/MediaSession2;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/media/MediaSession2;->getPlayerState()I

    move-result v1

    if-ne v1, v0, :cond_5

    iget-object v0, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;

    invoke-static {v0}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->access$200(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;

    invoke-static {v1}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->access$600(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;)Z

    move-result v1

    if-nez v1, :cond_4

    monitor-exit v0

    goto :goto_2

    :cond_4
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    iget-object v0, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;

    invoke-static {v0}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->access$500(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;)Landroid/support/v4/media/MediaSession2;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/MediaSession2;->play()V

    goto :goto_2

    :catchall_4
    move-exception v1

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v1

    :cond_5
    iget-object v0, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;

    invoke-static {v0}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->access$500(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;)Landroid/support/v4/media/MediaSession2;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/MediaSession2;->getPlayer()Landroid/support/v4/media/BaseMediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/support/v4/media/BaseMediaPlayer;->getPlayerVolume()F

    move-result v1

    iget-object v2, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->this$0:Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;

    invoke-static {v2}, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;->access$200(Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    const/4 v3, 0x0

    :try_start_9
    iget v4, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->mPlayerDuckingVolume:F

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_6

    monitor-exit v2

    goto :goto_2

    :cond_6
    iget v4, p0, Landroid/support/v4/media/AudioFocusHandler$AudioFocusHandlerImplBase$AudioFocusListener;->mPlayerVolumeBeforeDucking:F

    move v3, v4

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    invoke-virtual {v0, v3}, Landroid/support/v4/media/BaseMediaPlayer;->setPlayerVolume(F)V

    goto :goto_1

    :catchall_5
    move-exception v4

    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw v4

    :cond_7
    :goto_1
    nop

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
