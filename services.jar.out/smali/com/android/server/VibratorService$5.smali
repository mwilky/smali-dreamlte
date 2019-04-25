.class Lcom/android/server/VibratorService$5;
.super Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/VibratorService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/VibratorService$5;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGearVrStateChanged(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v0, 0x10

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/VibratorService$5;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0, v2}, Lcom/android/server/VibratorService;->access$1102(Lcom/android/server/VibratorService;Z)Z

    iget-object v0, p0, Lcom/android/server/VibratorService$5;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0, v2}, Lcom/android/server/VibratorService;->access$1002(Lcom/android/server/VibratorService;Z)Z

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/android/server/VibratorService$5;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0, v1}, Lcom/android/server/VibratorService;->access$1002(Lcom/android/server/VibratorService;Z)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/VibratorService$5;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0, v2}, Lcom/android/server/VibratorService;->access$1102(Lcom/android/server/VibratorService;Z)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/VibratorService$5;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0, v1}, Lcom/android/server/VibratorService;->access$1102(Lcom/android/server/VibratorService;Z)Z

    nop

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
