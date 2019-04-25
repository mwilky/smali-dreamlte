.class Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MultiWindowEventListener;
.super Lcom/samsung/android/multiwindow/IMultiWindowEventListener$Stub;
.source "MdnieScenarioControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiWindowEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MultiWindowEventListener;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MultiWindowEventListener;-><init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    return-void
.end method


# virtual methods
.method public onFocusStackChanged(Landroid/app/ActivityManager$StackInfo;)V
    .locals 6

    iget-object v0, p1, Landroid/app/ActivityManager$StackInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MultiWindowEventListener;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$3100(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MultiWindowEventListener;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$3200(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/app/SemMultiWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/SemMultiWindowManager;->getMode()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MultiWindowEventListener;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$3302(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z

    const-string v0, "MdnieScenarioControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MultiWindowState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MultiWindowEventListener;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$3300(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MultiWindowEventListener;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$3302(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z

    const-string v0, "MdnieScenarioControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MultiWindowState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MultiWindowEventListener;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$3300(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MultiWindowEventListener;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$3400(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MultiWindowEventListener;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$3300(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MultiWindowEventListener;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$600(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MultiWindowEventListener;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$600(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MultiWindowEventListener;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$600(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MultiWindowEventListener;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$600(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MultiWindowEventListener;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$3500(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v4, v2

    invoke-virtual {v0, v1, v4, v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MultiWindowEventListener;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MultiWindowEventListener;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->access$3400(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setHdrMode(Z)V

    :goto_1
    return-void
.end method

.method public onMultiWindowEnableChanged(Z)V
    .locals 0

    return-void
.end method

.method public onSnapWindowVisibilityChanged(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method
