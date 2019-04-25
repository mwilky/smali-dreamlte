.class Lcom/android/server/VibratorService$VibratorHandler;
.super Landroid/os/Handler;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibratorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method private constructor <init>(Lcom/android/server/VibratorService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/VibratorService$VibratorHandler;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/VibratorService$VibratorHandler;-><init>(Lcom/android/server/VibratorService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-static {}, Lcom/android/server/VibratorService;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VibratorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/VibratorService$VibratorHandler;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$7000(Lcom/android/server/VibratorService;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/VibratorService$VibratorHandler;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$6900(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$FeatureAppMute;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/VibratorService$FeatureAppMute;->update()Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/VibratorService$VibratorHandler;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$6800(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$FeatureSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/VibratorService$FeatureSetting;->update()Z

    nop

    :goto_0
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
