.class final Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;
.super Landroid/os/ShellCommand;
.source "MultiWindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MultiWindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MultiWindowShellCommand"
.end annotation


# static fields
.field private static final CMD_MULTI_RESUME:Ljava/lang/String; = "-nresume"

.field private static final CMD_STAY_FOCUS:Ljava/lang/String; = "-nfocus"

.field private static final ENABLE_SLIDEOVER_DEFAULT:Ljava/lang/String; = "-enableSlideoverDefault"

.field private static final ENTER_SIDE_SCREEN_MODE:Ljava/lang/String; = "-sideScreenMode"

.field private static final GHOST_MODE_COMMAND:Ljava/lang/String; = "-ghostmode"

.field private static final SET_MAX_FREEFORM_COUNT:Ljava/lang/String; = "-maxfreeform"

.field private static final SET_SIDE_SCREEN_ANIM_DURATION:Ljava/lang/String; = "-setSideScreenAnimDuration"

.field private static final SET_SIDE_SCREEN_WIDTH:Ljava/lang/String; = "-setSideScreenWidth"

.field private static final SNAP_WINDOW_COMMAND:Ljava/lang/String; = "-snapwindow"

.field private static final SWAP_TASKS_IN_SPLIT_SCREEN:Ljava/lang/String; = "-swapTasksInSplitScreen"

.field private static final SWAP_WINDOWING_MODE:Ljava/lang/String; = "-swapWindowingMode"


# instance fields
.field private final mDumping:Z

.field private final mInterface:Lcom/samsung/android/multiwindow/IMultiWindowManager;

.field private final mInternal:Lcom/android/server/am/MultiWindowManagerService;

.field final synthetic this$0:Lcom/android/server/am/MultiWindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MultiWindowManagerService;Lcom/android/server/am/MultiWindowManagerService;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    iput-object p2, p0, Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;->mInterface:Lcom/samsung/android/multiwindow/IMultiWindowManager;

    iput-object p2, p0, Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;->mInternal:Lcom/android/server/am/MultiWindowManagerService;

    iput-boolean p3, p0, Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;->mDumping:Z

    return-void
.end method

.method private runSideScreen()I
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "slideover"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->setSideScreenMode(I)V

    return v2

    :cond_0
    const-string/jumbo v1, "fixed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/am/MultiWindowManagerService;->setSideScreenMode(I)V

    return v2

    :cond_1
    const-string/jumbo v1, "docked"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/server/am/MultiWindowManagerService;->setSideScreenMode(I)V

    return v2

    :cond_2
    const/4 v1, -0x1

    return v1
.end method


# virtual methods
.method executeIfPossibleLocked(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    const/4 v5, 0x0

    if-eqz v0, :cond_c

    const-string v0, "-nresume"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v6, 0x1

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v0}, Lcom/android/server/am/MultiWindowManagerService;->access$1000(Lcom/android/server/am/MultiWindowManagerService;)V

    return v6

    :cond_0
    const-string v0, "-cgesture"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v0}, Lcom/android/server/am/MultiWindowManagerService;->access$1100(Lcom/android/server/am/MultiWindowManagerService;)V

    return v6

    :cond_1
    const-string v0, "-snapwindow"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v7, 0x5

    if-eqz v0, :cond_7

    array-length v0, v3

    if-lt v0, v6, :cond_6

    aget-object v0, v3, v5

    if-nez v0, :cond_2

    goto/16 :goto_1

    :cond_2
    const-string/jumbo v0, "show"

    aget-object v8, v3, v5

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    aget-object v0, v3, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v5, v1, Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v5, v0}, Lcom/android/server/am/MultiWindowManagerService;->showSnapWindowGuideView(I)V

    goto/16 :goto_2

    :cond_3
    :try_start_0
    const-string v13, "adb"

    const-string/jumbo v0, "enable"

    aget-object v5, v3, v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sget-boolean v5, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SNAP_WINDOW_DYNAMIC_ENABLED:Z

    if-eq v5, v0, :cond_4

    iget-object v5, v1, Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v5}, Lcom/android/server/am/MultiWindowManagerService;->access$1200(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/MultiWindowEnableController;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/server/am/MultiWindowEnableController;->setSnapWindowEnabled(Z)V

    :cond_4
    new-instance v10, Landroid/graphics/Rect;

    aget-object v5, v3, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v8, 0x2

    aget-object v8, v3, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x3

    aget-object v9, v3, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v11, 0x4

    aget-object v11, v3, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-direct {v10, v5, v8, v9, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    array-length v5, v3

    const/4 v8, 0x7

    if-lt v5, v8, :cond_5

    aget-object v5, v3, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v5, 0x6

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    iget-object v8, v1, Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    move v9, v0

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/am/MultiWindowManagerService;->setSnapWindow(ZLandroid/graphics/Rect;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    aget-object v5, v3, v7

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    iget-object v14, v1, Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    const/16 v17, 0x0

    move v15, v0

    move-object/from16 v16, v10

    move-object/from16 v19, v13

    invoke-virtual/range {v14 .. v19}, Lcom/android/server/am/MultiWindowManagerService;->setSnapWindow(ZLandroid/graphics/Rect;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_6
    :goto_1
    const-string v0, "Error: -snapwindow option requires params"

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_2
    return v6

    :cond_7
    const-string v0, "-swapTasksInSplitScreen"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v1, Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowManagerService;->swapTasksInSplitScreenMode()V

    return v6

    :cond_8
    const-string v0, "-freeform"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    aget-object v0, v3, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v8, v1, Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v8}, Lcom/android/server/am/MultiWindowManagerService;->access$400(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v8

    invoke-virtual {v8, v0, v7, v6}, Lcom/android/server/am/ActivityManagerService;->setTaskWindowingMode(IIZ)V

    goto :goto_4

    :cond_9
    const-string v0, "-nfocus"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v0}, Lcom/android/server/am/MultiWindowManagerService;->access$1300(Lcom/android/server/am/MultiWindowManagerService;)V

    return v6

    :cond_a
    const-string v0, "-visibleTasks"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "========== getVisibleTasks =========="

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v0}, Lcom/android/server/am/MultiWindowManagerService;->access$400(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    const/16 v7, 0x64

    invoke-virtual {v0, v7}, Lcom/android/server/am/ActivityManagerService;->getVisibleTasks(I)Ljava/util/List;

    move-result-object v0

    nop

    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_b

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_b
    return v6

    :cond_c
    :goto_4
    return v5
.end method

.method public onCommand(Ljava/lang/String;)I
    .locals 5

    if-nez p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x6cdb135d

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "sideScreen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v4

    :goto_1
    if-eqz v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {p0, p1, v3, v0}, Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;->executeIfPossibleLocked(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z

    return v4

    :cond_4
    invoke-direct {p0}, Lcom/android/server/am/MultiWindowManagerService$MultiWindowShellCommand;->runSideScreen()I

    move-result v1

    return v1
.end method

.method public onHelp()V
    .locals 0

    return-void
.end method
