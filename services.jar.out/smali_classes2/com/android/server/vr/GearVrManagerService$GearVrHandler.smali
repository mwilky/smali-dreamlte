.class final Lcom/android/server/vr/GearVrManagerService$GearVrHandler;
.super Landroid/os/Handler;
.source "GearVrManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/GearVrManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GearVrHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/GearVrManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/vr/GearVrManagerService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/vr/GearVrManagerService$GearVrHandler;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerService$GearVrHandler;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v3, v0, v2, v1}, Lcom/android/server/vr/GearVrManagerService;->access$100(Lcom/android/server/vr/GearVrManagerService;Z[Ljava/lang/String;I)V

    goto :goto_1

    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerService$GearVrHandler;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v2, v0, v1}, Lcom/android/server/vr/GearVrManagerService;->access$000(Lcom/android/server/vr/GearVrManagerService;II)V

    nop

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
