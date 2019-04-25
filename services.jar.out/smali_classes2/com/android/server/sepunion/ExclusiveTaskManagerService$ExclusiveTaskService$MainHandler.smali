.class final Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$MainHandler;
.super Landroid/os/Handler;
.source "ExclusiveTaskManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainHandler"
.end annotation


# static fields
.field private static final MSG_CLEAR_IGNORE_LIST:I = 0x3

.field private static final MSG_EXCLUSIVE_ADD_OBSERVER:I = 0x0

.field private static final MSG_START_EXCLUSIVE_OBSERVER:I = 0x1

.field private static final MSG_UPDATE_SETTING_DB_DELAYED:I = 0x2


# instance fields
.field final synthetic this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$MainHandler;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$MainHandler;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    invoke-static {v1}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$100(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->access$600(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$MainHandler;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    invoke-static {v1}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$100(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->access$500(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;III)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    new-instance v2, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;

    iget-object v3, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$MainHandler;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    invoke-static {v1}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$300(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$MainHandler;

    move-result-object v4

    invoke-static {v1}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$400(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;-><init>(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    invoke-static {v1, v2}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$102(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;)Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;

    goto :goto_0

    :pswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$MainHandler;->this$1:Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;

    invoke-static {v3}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;->access$100(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService;)Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;

    move-result-object v3

    invoke-static {v3, v1, v2}, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;->access$200(Lcom/android/server/sepunion/ExclusiveTaskManagerService$ExclusiveTaskService$ExclusiveTaskObserver;ILjava/lang/String;)V

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
