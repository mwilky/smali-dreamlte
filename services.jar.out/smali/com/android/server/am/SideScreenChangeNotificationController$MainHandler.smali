.class Lcom/android/server/am/SideScreenChangeNotificationController$MainHandler;
.super Landroid/os/Handler;
.source "SideScreenChangeNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SideScreenChangeNotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/SideScreenChangeNotificationController;


# direct methods
.method public constructor <init>(Lcom/android/server/am/SideScreenChangeNotificationController;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/SideScreenChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/SideScreenChangeNotificationController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/SideScreenChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/SideScreenChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/SideScreenChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/SideScreenChangeNotificationController;

    invoke-static {v1}, Lcom/android/server/am/SideScreenChangeNotificationController;->access$800(Lcom/android/server/am/SideScreenChangeNotificationController;)Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/am/SideScreenChangeNotificationController;->access$100(Lcom/android/server/am/SideScreenChangeNotificationController;Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;Landroid/os/Message;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/SideScreenChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/SideScreenChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/SideScreenChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/SideScreenChangeNotificationController;

    invoke-static {v1}, Lcom/android/server/am/SideScreenChangeNotificationController;->access$700(Lcom/android/server/am/SideScreenChangeNotificationController;)Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/am/SideScreenChangeNotificationController;->access$100(Lcom/android/server/am/SideScreenChangeNotificationController;Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;Landroid/os/Message;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/am/SideScreenChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/SideScreenChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/SideScreenChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/SideScreenChangeNotificationController;

    invoke-static {v1}, Lcom/android/server/am/SideScreenChangeNotificationController;->access$600(Lcom/android/server/am/SideScreenChangeNotificationController;)Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/am/SideScreenChangeNotificationController;->access$100(Lcom/android/server/am/SideScreenChangeNotificationController;Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;Landroid/os/Message;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/am/SideScreenChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/SideScreenChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/SideScreenChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/SideScreenChangeNotificationController;

    invoke-static {v1}, Lcom/android/server/am/SideScreenChangeNotificationController;->access$500(Lcom/android/server/am/SideScreenChangeNotificationController;)Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/am/SideScreenChangeNotificationController;->access$100(Lcom/android/server/am/SideScreenChangeNotificationController;Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;Landroid/os/Message;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/server/am/SideScreenChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/SideScreenChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/SideScreenChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/SideScreenChangeNotificationController;

    invoke-static {v1}, Lcom/android/server/am/SideScreenChangeNotificationController;->access$400(Lcom/android/server/am/SideScreenChangeNotificationController;)Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/am/SideScreenChangeNotificationController;->access$100(Lcom/android/server/am/SideScreenChangeNotificationController;Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;Landroid/os/Message;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/server/am/SideScreenChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/SideScreenChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/SideScreenChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/SideScreenChangeNotificationController;

    invoke-static {v1}, Lcom/android/server/am/SideScreenChangeNotificationController;->access$300(Lcom/android/server/am/SideScreenChangeNotificationController;)Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/am/SideScreenChangeNotificationController;->access$100(Lcom/android/server/am/SideScreenChangeNotificationController;Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;Landroid/os/Message;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/android/server/am/SideScreenChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/SideScreenChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/SideScreenChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/SideScreenChangeNotificationController;

    invoke-static {v1}, Lcom/android/server/am/SideScreenChangeNotificationController;->access$200(Lcom/android/server/am/SideScreenChangeNotificationController;)Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/am/SideScreenChangeNotificationController;->access$100(Lcom/android/server/am/SideScreenChangeNotificationController;Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;Landroid/os/Message;)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/android/server/am/SideScreenChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/SideScreenChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/SideScreenChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/SideScreenChangeNotificationController;

    invoke-static {v1}, Lcom/android/server/am/SideScreenChangeNotificationController;->access$000(Lcom/android/server/am/SideScreenChangeNotificationController;)Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/am/SideScreenChangeNotificationController;->access$100(Lcom/android/server/am/SideScreenChangeNotificationController;Lcom/android/server/am/SideScreenChangeNotificationController$SideScreenEventConsumer;Landroid/os/Message;)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
