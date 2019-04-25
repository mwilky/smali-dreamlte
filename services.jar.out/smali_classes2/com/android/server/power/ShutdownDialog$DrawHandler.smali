.class Lcom/android/server/power/ShutdownDialog$DrawHandler;
.super Landroid/os/Handler;
.source "ShutdownDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawHandler"
.end annotation


# instance fields
.field private finished:Z

.field private maxSleep:I

.field final synthetic this$0:Lcom/android/server/power/ShutdownDialog;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ShutdownDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/power/ShutdownDialog$DrawHandler;->init()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const-string v0, "ShutdownDialog"

    const-string v1, "DrawHandler.handleMessage"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->maxSleep:I

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "ShutdownDialog"

    const-string v1, "frame load finish"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->finished:Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->access$2000(Lcom/android/server/power/ShutdownDialog;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v1}, Lcom/android/server/power/ShutdownDialog;->access$1800(Lcom/android/server/power/ShutdownDialog;)I

    move-result v1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->access$1300(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$DrawHandler;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->maxSleep:I

    int-to-long v4, v1

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/power/ShutdownDialog$DrawHandler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->access$2100(Lcom/android/server/power/ShutdownDialog;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v1}, Lcom/android/server/power/ShutdownDialog;->access$500(Lcom/android/server/power/ShutdownDialog;)[Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->access$2000(Lcom/android/server/power/ShutdownDialog;)I

    move-result v3

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->access$1900(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->access$2000(Lcom/android/server/power/ShutdownDialog;)I

    move-result v3

    add-int/2addr v3, v2

    rem-int/lit8 v3, v3, 0x3

    invoke-static {v1, v3}, Lcom/android/server/power/ShutdownDialog;->access$2002(Lcom/android/server/power/ShutdownDialog;I)I

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v1}, Lcom/android/server/power/ShutdownDialog;->access$1900(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->finished:Z

    if-eqz v0, :cond_3

    const-string v0, "ShutdownDialog"

    const-string v1, "image draw finish"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-string v0, "ShutdownDialog"

    const-string v1, "image buffer not ready"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->access$1300(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$DrawHandler;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->maxSleep:I

    div-int/lit8 v1, v1, 0x2

    int-to-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/power/ShutdownDialog$DrawHandler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method

.method public init()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->finished:Z

    return-void
.end method
