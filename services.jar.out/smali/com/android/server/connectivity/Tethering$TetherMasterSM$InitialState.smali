.class Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;
.super Lcom/android/internal/util/State;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering$TetherMasterSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InitialState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, p0, v1}, Lcom/android/server/connectivity/Tethering;->access$4300(Lcom/android/server/connectivity/Tethering;Lcom/android/internal/util/State;I)V

    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x50007

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tether Mode unrequested by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v1, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$4600(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tether Mode requested by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$4400(Lcom/android/server/connectivity/Tethering$TetherMasterSM;ILcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$4500(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    :cond_0
    nop

    :goto_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x50001
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
