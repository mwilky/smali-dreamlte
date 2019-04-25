.class Lcom/android/server/power/ShutdownThread$10;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field final synthetic val$message:Ljava/lang/CharSequence;

.field final synthetic val$progress:I


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$10;->this$0:Lcom/android/server/power/ShutdownThread;

    iput p2, p0, Lcom/android/server/power/ShutdownThread$10;->val$progress:I

    iput-object p3, p0, Lcom/android/server/power/ShutdownThread$10;->val$message:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$10;->this$0:Lcom/android/server/power/ShutdownThread;

    invoke-static {v1}, Lcom/android/server/power/ShutdownThread;->access$500(Lcom/android/server/power/ShutdownThread;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$10;->this$0:Lcom/android/server/power/ShutdownThread;

    invoke-static {v1}, Lcom/android/server/power/ShutdownThread;->access$500(Lcom/android/server/power/ShutdownThread;)Landroid/app/ProgressDialog;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/ShutdownThread$10;->val$progress:I

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$10;->val$message:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$10;->this$0:Lcom/android/server/power/ShutdownThread;

    invoke-static {v1}, Lcom/android/server/power/ShutdownThread;->access$500(Lcom/android/server/power/ShutdownThread;)Landroid/app/ProgressDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$10;->val$message:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
