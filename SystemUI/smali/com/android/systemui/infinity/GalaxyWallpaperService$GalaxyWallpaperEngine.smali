.class Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;
.super Lcom/android/systemui/infinity/OpenGLES2WallpaperService$OpenGLES2Engine;
.source "GalaxyWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/infinity/GalaxyWallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GalaxyWallpaperEngine"
.end annotation


# instance fields
.field start:J

.field final synthetic this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;


# direct methods
.method constructor <init>(Lcom/android/systemui/infinity/GalaxyWallpaperService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-direct {p0, p1}, Lcom/android/systemui/infinity/OpenGLES2WallpaperService$OpenGLES2Engine;-><init>(Lcom/android/systemui/infinity/OpenGLES2WallpaperService;)V

    return-void
.end method

.method private init()V
    .locals 2

    const-string v0, "GalaxyWallpaper"

    const-string v1, "init()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->access$200(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Landroid/app/KeyguardManager;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->access$300(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->access$400(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->access$200(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->access$500(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->LOCK:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    invoke-direct {p0, v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->setMode(Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->HOME:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    invoke-direct {p0, v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->setMode(Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->BLACK:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    invoke-direct {p0, v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->setMode(Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->HOME:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    invoke-direct {p0, v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->setMode(Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->HOME:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    invoke-direct {p0, v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->setMode(Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;)V

    :goto_0
    return-void
.end method

.method private setMode(Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;)V
    .locals 3

    const-string v0, "GalaxyWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/systemui/infinity/GalaxyWallpaperService$2;->$SwitchMap$com$android$systemui$infinity$GalaxyWallpaperService$Mode:[I

    invoke-virtual {p1}, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->access$800(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->NONE:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->access$600()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->access$1000(Lcom/android/systemui/infinity/GalaxyWallpaperService;I)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->access$1200(Lcom/android/systemui/infinity/GalaxyWallpaperService;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->access$600()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->access$700(Lcom/android/systemui/infinity/GalaxyWallpaperService;I)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->access$800(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->NONE:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->access$900()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->access$1000(Lcom/android/systemui/infinity/GalaxyWallpaperService;I)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->access$1100(Lcom/android/systemui/infinity/GalaxyWallpaperService;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->access$800(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->LOCK:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->access$900()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->access$700(Lcom/android/systemui/infinity/GalaxyWallpaperService;I)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0, p1}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->access$802(Lcom/android/systemui/infinity/GalaxyWallpaperService;Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;)Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->access$100(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Lcom/android/systemui/infinity/GalaxyRenderer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->access$100(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Lcom/android/systemui/infinity/GalaxyRenderer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v1}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->access$800(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/GalaxyRenderer;->setMode(Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;)V

    :cond_2
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->access$300(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "GalaxyWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCommand action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "AOD_START"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_1
    const-string v1, "WAKE_AOD"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "SLEEP_LOCK"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v3

    goto :goto_0

    :sswitch_3
    const-string v1, "WAKE_LOCK"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "ACTION_UNLOCK"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0, v2}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->access$1400(Lcom/android/systemui/infinity/GalaxyWallpaperService;Z)V

    sget-object v0, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->HOME:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    invoke-direct {p0, v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->setMode(Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->onDeviceUnlocked()V

    goto/16 :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0, v2}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->access$1400(Lcom/android/systemui/infinity/GalaxyWallpaperService;Z)V

    sget-object v0, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->LOCK:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    invoke-direct {p0, v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->setMode(Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->onScreenOn()V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->access$800(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->AOD:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->access$800(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->BLACK:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    if-ne v0, v1, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0, v3}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->access$1400(Lcom/android/systemui/infinity/GalaxyWallpaperService;Z)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->access$800(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->AOD:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->AOD:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    invoke-direct {p0, v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->setMode(Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-virtual {v0, v3}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->resetParticle(Z)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->access$800(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->AOD:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->access$800(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->BLACK:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    if-ne v0, v1, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0, v3}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->access$1400(Lcom/android/systemui/infinity/GalaxyWallpaperService;Z)V

    sget-object v0, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->AOD:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    invoke-direct {p0, v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->setMode(Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->onScreenOff()V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->access$1600()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->access$1700(Lcom/android/systemui/infinity/GalaxyWallpaperService;J)V

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0, v3}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->access$1400(Lcom/android/systemui/infinity/GalaxyWallpaperService;Z)V

    sget-object v0, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->BLACK:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    invoke-direct {p0, v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->setMode(Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->access$1500(Lcom/android/systemui/infinity/GalaxyWallpaperService;)V

    nop

    :cond_4
    :goto_1
    const/4 v0, 0x0

    return-object v0

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4a9c6a93 -> :sswitch_4
        -0x4201ad1a -> :sswitch_3
        0x7c1d9b3 -> :sswitch_2
        0x3fef44bb -> :sswitch_1
        0x67d9f499 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/systemui/infinity/OpenGLES2WallpaperService$OpenGLES2Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-super {p0}, Lcom/android/systemui/infinity/OpenGLES2WallpaperService$OpenGLES2Engine;->getGlSurfaceView()Lcom/android/systemui/infinity/GLWallpaperService$GLEngine$WallpaperGLSurfaceView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->access$002(Lcom/android/systemui/infinity/GalaxyWallpaperService;Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView;

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->access$100(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Lcom/android/systemui/infinity/GalaxyRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->access$100(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Lcom/android/systemui/infinity/GalaxyRenderer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v1}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->access$000(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Landroid/opengl/GLSurfaceView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/GalaxyRenderer;->setGlSurfaceView(Landroid/opengl/GLSurfaceView;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-virtual {v1}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    invoke-static {v0, v1}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->access$202(Lcom/android/systemui/infinity/GalaxyWallpaperService;Landroid/app/KeyguardManager;)Landroid/app/KeyguardManager;

    invoke-direct {p0}, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->init()V

    return-void
.end method

.method public onOffsetsChanged(FFFFII)V
    .locals 1

    invoke-super/range {p0 .. p6}, Lcom/android/systemui/infinity/OpenGLES2WallpaperService$OpenGLES2Engine;->onOffsetsChanged(FFFFII)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->access$100(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Lcom/android/systemui/infinity/GalaxyRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->access$100(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Lcom/android/systemui/infinity/GalaxyRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/infinity/GalaxyRenderer;->requestDrawFrame()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->access$800(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->AOD:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->access$800(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->BLACK:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    iget-object v3, v3, Lcom/android/systemui/infinity/GalaxyWallpaperService;->tracker:Lcom/android/systemui/infinity/util/VelocityTracker;

    invoke-virtual {v3, v1, v2}, Lcom/android/systemui/infinity/util/VelocityTracker;->resetValue(FF)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->start:J

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    iget-object v3, v3, Lcom/android/systemui/infinity/GalaxyWallpaperService;->tracker:Lcom/android/systemui/infinity/util/VelocityTracker;

    invoke-virtual {v3, v1, v2}, Lcom/android/systemui/infinity/util/VelocityTracker;->addHistory(FF)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    iget-object v3, v3, Lcom/android/systemui/infinity/GalaxyWallpaperService;->tracker:Lcom/android/systemui/infinity/util/VelocityTracker;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/android/systemui/infinity/util/VelocityTracker;->getLastVelocityX(I)F

    move-result v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->start:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x50

    cmp-long v6, v6, v8

    if-lez v6, :cond_3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x3fb33333    # 1.4f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v6}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->access$100(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Lcom/android/systemui/infinity/GalaxyRenderer;

    move-result-object v6

    neg-float v7, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v8

    div-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Lcom/android/systemui/infinity/GalaxyRenderer;->onFlick(I)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/systemui/infinity/OpenGLES2WallpaperService$OpenGLES2Engine;->onVisibilityChanged(Z)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0, p1}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->access$1302(Lcom/android/systemui/infinity/GalaxyWallpaperService;Z)Z

    const-string v0, "GalaxyWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVisibilityChanged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v2}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->access$800(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->access$800(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->HOME:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->access$800(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->LOCK:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->access$1400(Lcom/android/systemui/infinity/GalaxyWallpaperService;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->access$1400(Lcom/android/systemui/infinity/GalaxyWallpaperService;Z)V

    :goto_0
    return-void
.end method
