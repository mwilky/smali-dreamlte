.class Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$1;
.super Landroid/app/IProcessObserver$Stub;
.source "AdaptiveDisplayColorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;


# direct methods
.method constructor <init>(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$1;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method getPackageNameFromPid(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$1;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$900(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Landroid/app/ActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$1;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$900(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Landroid/app/ActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, p1, :cond_0

    iget-object v0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object v0

    :cond_0
    goto :goto_0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method getPidFromPackageName(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$1;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$900(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Landroid/app/ActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$1;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$900(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Landroid/app/ActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz p1, :cond_0

    iget-object v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method getUidFromPackageName(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$1;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$900(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Landroid/app/ActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$1;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$900(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Landroid/app/ActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz p1, :cond_0

    iget-object v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public onForegroundActivitiesChanged(IIZ)V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$1;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$1000(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, p1

    move v2, p2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v3, :cond_2

    if-eqz p3, :cond_1

    invoke-virtual {p0, v1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$1;->getPackageNameFromPid(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$1;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {v6}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$1000(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$1;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {v6}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$1000(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    move-result-object v6

    const-wide/16 v7, 0x3e8

    add-long/2addr v7, v3

    invoke-virtual {v6, v5, v7, v8}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    return-void

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$1;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {v3}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$900(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Landroid/app/ActivityManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_3

    return-void

    :cond_3
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$1;->getPidFromPackageName(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$1;->getUidFromPackageName(Ljava/lang/String;)I

    move-result v2

    :goto_0
    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$1;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {v3}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$1000(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    iput v4, v3, Landroid/os/Message;->what:I

    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v1, v3, Landroid/os/Message;->arg1:I

    iput v2, v3, Landroid/os/Message;->arg2:I

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$1;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {v4}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->access$1000(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    return-void
.end method

.method public onProcessDied(II)V
    .locals 0

    return-void
.end method
