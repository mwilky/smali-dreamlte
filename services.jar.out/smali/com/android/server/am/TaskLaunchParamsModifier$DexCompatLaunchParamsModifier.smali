.class Lcom/android/server/am/TaskLaunchParamsModifier$DexCompatLaunchParamsModifier;
.super Ljava/lang/Object;
.source "TaskLaunchParamsModifier.java"

# interfaces
.implements Lcom/android/server/am/LaunchParamsController$LaunchParamsModifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/TaskLaunchParamsModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DexCompatLaunchParamsModifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/TaskLaunchParamsModifier;


# direct methods
.method constructor <init>(Lcom/android/server/am/TaskLaunchParamsModifier;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/TaskLaunchParamsModifier$DexCompatLaunchParamsModifier;->this$0:Lcom/android/server/am/TaskLaunchParamsModifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCalculate(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/LaunchParamsController$LaunchParams;Lcom/android/server/am/LaunchParamsController$LaunchParams;)I
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    if-eqz v1, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    if-nez v4, :cond_0

    goto/16 :goto_6

    :cond_0
    if-eqz v1, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->isDexCompatEnabled()Z

    move-result v4

    if-eqz v4, :cond_b

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v0, Lcom/android/server/am/TaskLaunchParamsModifier$DexCompatLaunchParamsModifier;->this$0:Lcom/android/server/am/TaskLaunchParamsModifier;

    invoke-static {v4}, Lcom/android/server/am/TaskLaunchParamsModifier;->access$000(Lcom/android/server/am/TaskLaunchParamsModifier;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v14, p6

    iget v5, v14, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->getFreeformStacks(I)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v15, 0x1

    sub-int/2addr v5, v15

    :goto_0
    if-ltz v5, :cond_1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    move-object v6, v3

    goto :goto_1

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v4

    move-object v6, v4

    :goto_1
    iget-object v4, v0, Lcom/android/server/am/TaskLaunchParamsModifier$DexCompatLaunchParamsModifier;->this$0:Lcom/android/server/am/TaskLaunchParamsModifier;

    invoke-static {v4}, Lcom/android/server/am/TaskLaunchParamsModifier;->access$100(Lcom/android/server/am/TaskLaunchParamsModifier;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->getParent()Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iget-object v5, v0, Lcom/android/server/am/TaskLaunchParamsModifier$DexCompatLaunchParamsModifier;->this$0:Lcom/android/server/am/TaskLaunchParamsModifier;

    invoke-static {v5}, Lcom/android/server/am/TaskLaunchParamsModifier;->access$000(Lcom/android/server/am/TaskLaunchParamsModifier;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mMultiDisplayManager:Lcom/android/server/am/MultiDisplayManagerService;

    iget-object v13, v5, Lcom/android/server/am/MultiDisplayManagerService;->mDexCompatController:Lcom/android/server/am/DexCompatController;

    invoke-virtual {v13, v1}, Lcom/android/server/am/DexCompatController;->getCompatBounds(Lcom/android/server/am/TaskRecord;)Landroid/graphics/Rect;

    move-result-object v12

    const/4 v5, 0x0

    if-nez v12, :cond_3

    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DexCompatLaunchParamsModifier_onCalculate: dexCompatBounds is null, task="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v12}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v11

    iget-object v5, v0, Lcom/android/server/am/TaskLaunchParamsModifier$DexCompatLaunchParamsModifier;->this$0:Lcom/android/server/am/TaskLaunchParamsModifier;

    invoke-static {v5, v1}, Lcom/android/server/am/TaskLaunchParamsModifier;->access$200(Lcom/android/server/am/TaskLaunchParamsModifier;Lcom/android/server/am/TaskRecord;)Landroid/graphics/Rect;

    move-result-object v10

    if-eqz v11, :cond_4

    invoke-virtual {v4, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_2
    move-object/from16 v18, v10

    move v15, v11

    :goto_3
    move-object/from16 v19, v12

    :goto_4
    move-object/from16 v20, v13

    goto/16 :goto_5

    :cond_4
    if-eqz v10, :cond_5

    invoke-virtual {v10}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v4, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v5, v10, Landroid/graphics/Rect;->left:I

    iget v7, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5, v7}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_2

    :cond_5
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v16

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v17

    if-nez v2, :cond_6

    iget-object v5, v0, Lcom/android/server/am/TaskLaunchParamsModifier$DexCompatLaunchParamsModifier;->this$0:Lcom/android/server/am/TaskLaunchParamsModifier;

    iget-object v7, v0, Lcom/android/server/am/TaskLaunchParamsModifier$DexCompatLaunchParamsModifier;->this$0:Lcom/android/server/am/TaskLaunchParamsModifier;

    invoke-static {v7}, Lcom/android/server/am/TaskLaunchParamsModifier;->access$100(Lcom/android/server/am/TaskLaunchParamsModifier;)Landroid/graphics/Rect;

    move-result-object v7

    move/from16 v8, v16

    move/from16 v9, v17

    move-object/from16 v18, v10

    move-object v10, v14

    move v15, v11

    move-object v11, v4

    invoke-static/range {v5 .. v11}, Lcom/android/server/am/TaskLaunchParamsModifier;->access$300(Lcom/android/server/am/TaskLaunchParamsModifier;Ljava/util/ArrayList;Landroid/graphics/Rect;IILcom/android/server/am/LaunchParamsController$LaunchParams;Landroid/graphics/Rect;)V

    goto :goto_3

    :cond_6
    move-object/from16 v18, v10

    move v15, v11

    iget v5, v2, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    and-int/lit8 v5, v5, 0x70

    iget v7, v2, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    and-int/lit8 v11, v7, 0x7

    const/16 v7, 0x30

    const/4 v8, 0x5

    if-ne v5, v7, :cond_8

    if-ne v11, v8, :cond_7

    iget-object v7, v0, Lcom/android/server/am/TaskLaunchParamsModifier$DexCompatLaunchParamsModifier;->this$0:Lcom/android/server/am/TaskLaunchParamsModifier;

    iget-object v8, v0, Lcom/android/server/am/TaskLaunchParamsModifier$DexCompatLaunchParamsModifier;->this$0:Lcom/android/server/am/TaskLaunchParamsModifier;

    invoke-static {v8}, Lcom/android/server/am/TaskLaunchParamsModifier;->access$100(Lcom/android/server/am/TaskLaunchParamsModifier;)Landroid/graphics/Rect;

    move-result-object v9

    move-object v8, v6

    move/from16 v10, v16

    move v1, v11

    move/from16 v11, v17

    move-object/from16 v19, v12

    move-object v12, v4

    invoke-static/range {v7 .. v12}, Lcom/android/server/am/TaskLaunchParamsModifier;->access$400(Lcom/android/server/am/TaskLaunchParamsModifier;Ljava/util/ArrayList;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    goto :goto_4

    :cond_7
    move v1, v11

    move-object/from16 v19, v12

    iget-object v7, v0, Lcom/android/server/am/TaskLaunchParamsModifier$DexCompatLaunchParamsModifier;->this$0:Lcom/android/server/am/TaskLaunchParamsModifier;

    iget-object v8, v0, Lcom/android/server/am/TaskLaunchParamsModifier$DexCompatLaunchParamsModifier;->this$0:Lcom/android/server/am/TaskLaunchParamsModifier;

    invoke-static {v8}, Lcom/android/server/am/TaskLaunchParamsModifier;->access$100(Lcom/android/server/am/TaskLaunchParamsModifier;)Landroid/graphics/Rect;

    move-result-object v9

    move-object v8, v6

    move/from16 v10, v16

    move/from16 v11, v17

    move-object v12, v4

    invoke-static/range {v7 .. v12}, Lcom/android/server/am/TaskLaunchParamsModifier;->access$500(Lcom/android/server/am/TaskLaunchParamsModifier;Ljava/util/ArrayList;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    goto :goto_4

    :cond_8
    move v1, v11

    move-object/from16 v19, v12

    const/16 v7, 0x50

    if-ne v5, v7, :cond_a

    if-ne v1, v8, :cond_9

    iget-object v7, v0, Lcom/android/server/am/TaskLaunchParamsModifier$DexCompatLaunchParamsModifier;->this$0:Lcom/android/server/am/TaskLaunchParamsModifier;

    iget-object v8, v0, Lcom/android/server/am/TaskLaunchParamsModifier$DexCompatLaunchParamsModifier;->this$0:Lcom/android/server/am/TaskLaunchParamsModifier;

    invoke-static {v8}, Lcom/android/server/am/TaskLaunchParamsModifier;->access$100(Lcom/android/server/am/TaskLaunchParamsModifier;)Landroid/graphics/Rect;

    move-result-object v9

    move-object v8, v6

    move/from16 v10, v16

    move/from16 v11, v17

    move-object v12, v4

    invoke-static/range {v7 .. v12}, Lcom/android/server/am/TaskLaunchParamsModifier;->access$600(Lcom/android/server/am/TaskLaunchParamsModifier;Ljava/util/ArrayList;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    goto/16 :goto_4

    :cond_9
    iget-object v7, v0, Lcom/android/server/am/TaskLaunchParamsModifier$DexCompatLaunchParamsModifier;->this$0:Lcom/android/server/am/TaskLaunchParamsModifier;

    iget-object v8, v0, Lcom/android/server/am/TaskLaunchParamsModifier$DexCompatLaunchParamsModifier;->this$0:Lcom/android/server/am/TaskLaunchParamsModifier;

    invoke-static {v8}, Lcom/android/server/am/TaskLaunchParamsModifier;->access$100(Lcom/android/server/am/TaskLaunchParamsModifier;)Landroid/graphics/Rect;

    move-result-object v9

    move-object v8, v6

    move/from16 v10, v16

    move/from16 v11, v17

    move-object v12, v4

    invoke-static/range {v7 .. v12}, Lcom/android/server/am/TaskLaunchParamsModifier;->access$700(Lcom/android/server/am/TaskLaunchParamsModifier;Ljava/util/ArrayList;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    goto/16 :goto_4

    :cond_a
    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received unsupported gravity: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v2, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", positioning in the center instead."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v0, Lcom/android/server/am/TaskLaunchParamsModifier$DexCompatLaunchParamsModifier;->this$0:Lcom/android/server/am/TaskLaunchParamsModifier;

    iget-object v8, v0, Lcom/android/server/am/TaskLaunchParamsModifier$DexCompatLaunchParamsModifier;->this$0:Lcom/android/server/am/TaskLaunchParamsModifier;

    invoke-static {v8}, Lcom/android/server/am/TaskLaunchParamsModifier;->access$100(Lcom/android/server/am/TaskLaunchParamsModifier;)Landroid/graphics/Rect;

    move-result-object v9

    move-object v8, v6

    move/from16 v10, v16

    move/from16 v11, v17

    move-object v12, v14

    move-object/from16 v20, v13

    move-object v13, v4

    invoke-static/range {v7 .. v13}, Lcom/android/server/am/TaskLaunchParamsModifier;->access$300(Lcom/android/server/am/TaskLaunchParamsModifier;Ljava/util/ArrayList;Landroid/graphics/Rect;IILcom/android/server/am/LaunchParamsController$LaunchParams;Landroid/graphics/Rect;)V

    :goto_5
    move-object/from16 v1, p7

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5, v15}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->setBoundsIfPossible(Landroid/graphics/Rect;IZ)Z

    return v5

    :cond_b
    move-object/from16 v14, p6

    move-object/from16 v1, p7

    return v3

    :cond_c
    :goto_6
    move-object/from16 v14, p6

    move-object/from16 v1, p7

    return v3
.end method
