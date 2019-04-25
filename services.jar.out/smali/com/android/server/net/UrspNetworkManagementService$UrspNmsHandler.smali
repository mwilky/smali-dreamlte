.class Lcom/android/server/net/UrspNetworkManagementService$UrspNmsHandler;
.super Landroid/os/Handler;
.source "UrspNetworkManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/UrspNetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UrspNmsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/UrspNetworkManagementService;


# direct methods
.method constructor <init>(Lcom/android/server/net/UrspNetworkManagementService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/net/UrspNetworkManagementService$UrspNmsHandler;->this$0:Lcom/android/server/net/UrspNetworkManagementService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/UrspNetworkManagementService;->log(Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    const-string v0, "default case"

    invoke-static {v0}, Lcom/android/server/net/UrspNetworkManagementService;->log(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string v0, "MSG_SET_UID_RULES_FOR_FOC"

    invoke-static {v0}, Lcom/android/server/net/UrspNetworkManagementService;->log(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [I

    iget-object v1, p0, Lcom/android/server/net/UrspNetworkManagementService$UrspNmsHandler;->this$0:Lcom/android/server/net/UrspNetworkManagementService;

    invoke-static {v1, v0}, Lcom/android/server/net/UrspNetworkManagementService;->access$200(Lcom/android/server/net/UrspNetworkManagementService;[I)V

    goto :goto_0

    :pswitch_1
    const-string v0, "MSG_SET_STATE_FOR_FOC"

    invoke-static {v0}, Lcom/android/server/net/UrspNetworkManagementService;->log(Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    move v0, v1

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [I

    iget-object v3, p0, Lcom/android/server/net/UrspNetworkManagementService$UrspNmsHandler;->this$0:Lcom/android/server/net/UrspNetworkManagementService;

    invoke-static {v3, v0, v2, v1}, Lcom/android/server/net/UrspNetworkManagementService;->access$400(Lcom/android/server/net/UrspNetworkManagementService;Z[II)V

    goto :goto_0

    :pswitch_2
    const-string v0, "MSG_SET_NETID_FOR_FOC"

    invoke-static {v0}, Lcom/android/server/net/UrspNetworkManagementService;->log(Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/net/UrspNetworkManagementService$UrspNmsHandler;->this$0:Lcom/android/server/net/UrspNetworkManagementService;

    invoke-static {v1, v0}, Lcom/android/server/net/UrspNetworkManagementService;->access$300(Lcom/android/server/net/UrspNetworkManagementService;I)V

    goto :goto_0

    :pswitch_3
    const-string v0, "MSG_SET_UID_RULE_FOR_MDO"

    invoke-static {v0}, Lcom/android/server/net/UrspNetworkManagementService;->log(Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v2, :cond_1

    move v1, v2

    nop

    :cond_1
    iget-object v2, p0, Lcom/android/server/net/UrspNetworkManagementService$UrspNmsHandler;->this$0:Lcom/android/server/net/UrspNetworkManagementService;

    invoke-static {v2, v1, v0}, Lcom/android/server/net/UrspNetworkManagementService;->access$100(Lcom/android/server/net/UrspNetworkManagementService;ZI)V

    goto :goto_0

    :pswitch_4
    const-string v0, "MSG_SET_NETID_FOR_MDO"

    invoke-static {v0}, Lcom/android/server/net/UrspNetworkManagementService;->log(Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/net/UrspNetworkManagementService$UrspNmsHandler;->this$0:Lcom/android/server/net/UrspNetworkManagementService;

    invoke-static {v1, v0}, Lcom/android/server/net/UrspNetworkManagementService;->access$000(Lcom/android/server/net/UrspNetworkManagementService;I)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
