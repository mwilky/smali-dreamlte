.class Lcom/android/server/audio/AudioService$8;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/hardware/display/SemDeviceStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/audio/AudioService;->setupCustomRoutine()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$8;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionStatusChanged(I)V
    .locals 0

    return-void
.end method

.method public onDlnaConnectionStatusChanged(Z)V
    .locals 0

    return-void
.end method

.method public onQosLevelChanged(I)V
    .locals 0

    return-void
.end method

.method public onScreenSharingStatusChanged(I)V
    .locals 3

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_DISPLAY_VOLUME_CONTROL:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/audio/AudioService$8;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$15800(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/audio/AudioService$8;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->access$15902(Lcom/android/server/audio/AudioService;Z)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    if-ne p1, v0, :cond_2

    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_DISPLAY_VOLUME_CONTROL:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$8;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$15800(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$8;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->access$15902(Lcom/android/server/audio/AudioService;Z)Z

    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$8;->this$0:Lcom/android/server/audio/AudioService;

    iget-boolean v0, v0, Lcom/android/server/audio/AudioService;->mSplitSound:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/audio/AudioService$8;->this$0:Lcom/android/server/audio/AudioService;

    iput-boolean v1, v0, Lcom/android/server/audio/AudioService;->mSplitSound:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SplitSound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/AudioService$8;->this$0:Lcom/android/server/audio/AudioService;

    iget-boolean v1, v1, Lcom/android/server/audio/AudioService;->mSplitSound:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setPolicyParameters(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/audio/AudioService$8;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$12200(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/MediaFocusControl;->checkSplitSoundAudioFocus()V

    :cond_2
    :goto_0
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onScreenSharingStatusChanged, status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/AudioService$8;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$15900(Lcom/android/server/audio/AudioService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
