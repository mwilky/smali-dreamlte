.class final Lcom/android/server/wm/AspectRatioController$H;
.super Landroid/os/Handler;
.source "AspectRatioController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AspectRatioController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field private static final MSG_SAVE_PACKAGES_NOW:I = 0x1

.field private static final TIME_FOR_SAVE_PACKAGES:I = 0x7d0


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/AspectRatioController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/AspectRatioController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/AspectRatioController$H;->this$0:Lcom/android/server/wm/AspectRatioController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AspectRatioController$H;->this$0:Lcom/android/server/wm/AspectRatioController;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/AspectRatioController$H;->this$0:Lcom/android/server/wm/AspectRatioController;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
