.class Lcom/android/server/am/ActivityStarter;
.super Ljava/lang/Object;
.source "ActivityStarter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityStarter$Request;,
        Lcom/android/server/am/ActivityStarter$DefaultFactory;,
        Lcom/android/server/am/ActivityStarter$Factory;
    }
.end annotation


# static fields
.field private static final FORCE_FREEFORM_MODE_BY_LAUNCH_POLICY:I = 0x2

.field private static final FORCE_FREEFORM_MODE_BY_PENDING_INTENT:I = 0x1

.field private static final FORCE_FREEFORM_MODE_NONE:I = 0x0

.field private static final INVALID_LAUNCH_MODE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_CONFIGURATION:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_FOCUS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_RESULTS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_USER_LEAVING:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private mAddingToTask:Z

.field private mAvoidMoveToFront:Z

.field private mCallingUid:I

.field private final mController:Lcom/android/server/am/ActivityStartController;

.field mDexInterceptor:Lcom/android/server/am/MultiDisplayManagerService$ActivityStartInterceptor;

.field private mDoResume:Z

.field private mDockMinimizedTopActivity:Lcom/android/server/am/ActivityRecord;

.field private mForceFreeformMode:I

.field private mInTask:Lcom/android/server/am/TaskRecord;

.field private mIntent:Landroid/content/Intent;

.field private mIntentDelivered:Z

.field private final mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

.field private mKeepCurTransition:Z

.field private final mLastStartActivityRecord:[Lcom/android/server/am/ActivityRecord;

.field private mLastStartActivityResult:I

.field private mLastStartActivityTimeMs:J

.field private mLastStartReason:Ljava/lang/String;

.field private mLaunchFlags:I

.field private mLaunchMode:I

.field private mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

.field private mLaunchTaskBehind:Z

.field private mMovedToFront:Z

.field final mMultiDisplayManager:Lcom/android/server/am/MultiDisplayManagerService;

.field private mNewTaskInfo:Landroid/content/pm/ActivityInfo;

.field private mNewTaskIntent:Landroid/content/Intent;

.field private mNoAnimation:Z

.field private mNotTop:Lcom/android/server/am/ActivityRecord;

.field private mOptions:Landroid/app/ActivityOptions;

.field private mPreferredDisplayId:I

.field private mRequest:Lcom/android/server/am/ActivityStarter$Request;

.field private mReuseTask:Lcom/android/server/am/TaskRecord;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mSourceRecord:Lcom/android/server/am/ActivityRecord;

.field private mSourceStack:Lcom/android/server/am/ActivityStack;

.field private mStartActivity:Lcom/android/server/am/ActivityRecord;

.field private mStartFlags:I

.field private final mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private mTargetStack:Lcom/android/server/am/ActivityStack;

.field private mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field private mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

.field private personaManager:Lcom/samsung/android/knox/SemPersonaManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStartController;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStartInterceptor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-direct {v0}, Lcom/android/server/am/LaunchParamsController$LaunchParams;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/android/server/am/ActivityRecord;

    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/am/ActivityRecord;

    new-instance v1, Lcom/android/server/am/ActivityStarter$Request;

    invoke-direct {v1}, Lcom/android/server/am/ActivityStarter$Request;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/am/ActivityStarter;->mForceFreeformMode:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mDockMinimizedTopActivity:Lcom/android/server/am/ActivityRecord;

    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->personaManager:Lcom/samsung/android/knox/SemPersonaManager;

    iput-object p1, p0, Lcom/android/server/am/ActivityStarter;->mController:Lcom/android/server/am/ActivityStartController;

    iput-object p2, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-object p4, p0, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v1, p2, Lcom/android/server/am/ActivityManagerService;->mMultiDisplayManager:Lcom/android/server/am/MultiDisplayManagerService;

    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mMultiDisplayManager:Lcom/android/server/am/MultiDisplayManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mMultiDisplayManager:Lcom/android/server/am/MultiDisplayManagerService;

    iget-object v1, v1, Lcom/android/server/am/MultiDisplayManagerService;->mInterceptor:Lcom/android/server/am/MultiDisplayManagerService$ActivityStartInterceptor;

    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mDexInterceptor:Lcom/android/server/am/MultiDisplayManagerService$ActivityStartInterceptor;

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStarter;->reset(Z)V

    return-void
.end method

.method private addOrReparentStartingActivity(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/am/ActivityRecord;->reparent(Lcom/android/server/am/TaskRecord;ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p1, v0}, Lcom/android/server/am/TaskRecord;->addActivityToTop(Lcom/android/server/am/ActivityRecord;)V

    :goto_1
    return-void
.end method

.method private adjustLaunchFlagsToDocumentMode(Lcom/android/server/am/ActivityRecord;ZZI)I
    .locals 2

    const/high16 v0, 0x80000

    and-int v1, p4, v0

    if-eqz v1, :cond_1

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    const-string v0, "ActivityManager"

    const-string v1, "Ignoring FLAG_ACTIVITY_NEW_DOCUMENT, launchMode is \"singleInstance\" or \"singleTask\""

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, -0x8080001

    and-int/2addr p4, v0

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const v0, -0x8000001

    and-int/2addr p4, v0

    goto :goto_0

    :pswitch_1
    or-int/2addr p4, v0

    goto :goto_0

    :pswitch_2
    or-int/2addr p4, v0

    goto :goto_0

    :pswitch_3
    nop

    :goto_0
    return p4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private canLaunchIntoFocusedStack(Lcom/android/server/am/ActivityRecord;Z)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isActivityTypeAssistant()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isActivityTypeAssistant()Z

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v1

    if-eq v1, v3, :cond_2

    packed-switch v1, :pswitch_data_0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {p1, v1}, Lcom/android/server/am/ActivityRecord;->canBeLaunchedOnDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->supportsFreeform()Z

    move-result v1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->supportsSplitScreenWindowingMode()Z

    move-result v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    nop

    :goto_0
    nop

    if-eqz v1, :cond_3

    if-nez p2, :cond_3

    iget v4, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    iget v5, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-ne v4, v5, :cond_3

    move v2, v3

    nop

    :cond_3
    return v2

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private checkStartActivityAllowedByEDM(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;ILcom/android/server/am/SafeActivityOptions;Landroid/content/ComponentName;Ljava/lang/String;)I
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v6

    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0, v6}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    const/4 v7, 0x0

    if-eqz v3, :cond_0

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v7

    :goto_0
    move v15, v0

    const/16 v16, -0x65

    if-eqz p5, :cond_19

    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const-string v0, "com.android.settings"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :try_start_0
    const-string/jumbo v0, "restriction_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v7, v15}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSettingsChangesAllowedAsUser(ZI)Z

    move-result v8

    if-nez v8, :cond_5

    const/4 v8, 0x0

    const-string v9, ":android:show_fragment"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v9, :cond_1

    :try_start_1
    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v9, v10

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v7, v14

    goto/16 :goto_4

    :cond_1
    :goto_1
    move-object v12, v9

    :try_start_2
    sget-object v9, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->settingsExceptions:[Ljava/lang/String;

    array-length v10, v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move v11, v7

    :goto_2
    if-ge v11, v10, :cond_3

    :try_start_3
    aget-object v17, v9, v11

    move-object/from16 v18, v17

    move-object/from16 v13, v18

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v17, :cond_2

    const/4 v8, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    move/from16 v17, v8

    if-eqz v17, :cond_4

    const/high16 v8, 0x800000

    :try_start_4
    invoke-virtual {v2, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v8, 0x5

    const/4 v9, 0x5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    const-string v13, "ActivityStarter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Start activity "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " succeeded"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    const/4 v10, 0x0

    move-object/from16 v21, v12

    move-object v12, v13

    move-object v13, v7

    move-object v7, v14

    move v14, v15

    :try_start_5
    invoke-static/range {v8 .. v14}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_5

    :cond_4
    move-object/from16 v21, v12

    move-object v7, v14

    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Settings restriction policy blocks "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, v21

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " from starting!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x1

    invoke-virtual {v0, v13, v15}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSettingsChangesAllowedAsUser(ZI)Z

    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    const/4 v8, 0x5

    const/4 v9, 0x5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    const-string v12, "ActivityStarter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Start activity "

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " failed. Blocked due to settings changes not allowed."

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v10, 0x0

    move-object/from16 v18, v14

    move v14, v15

    invoke-static/range {v8 .. v14}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    return v16

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_5
    move-object v7, v14

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v7, v14

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    nop

    :cond_6
    const/4 v2, 0x1

    goto/16 :goto_a

    :cond_7
    move-object v7, v14

    sget-object v0, Lcom/samsung/android/knox/kiosk/KioskMode;->TASK_MANAGER_PKGNAME:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lcom/samsung/android/knox/kiosk/KioskMode;->CONTROL_PANEL_PKGNAME:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_9

    :cond_8
    const-string v0, "com.vlingo.midas"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "com.samsung.voiceserviceplatform"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_9
    :try_start_6
    const-string/jumbo v0, "restriction_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    if-eqz v0, :cond_d

    const/4 v14, 0x1

    :try_start_7
    invoke-virtual {v0, v14, v15}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSVoiceAllowedAsUser(ZI)Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-virtual {v0, v14, v15}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabledAsUser(ZI)Z

    move-result v8

    if-nez v8, :cond_a

    goto :goto_6

    :cond_a
    move v2, v14

    goto :goto_7

    :cond_b
    :goto_6
    const-string v8, ":android:show_fragment"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_c

    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    :cond_c
    move-object v13, v8

    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    const/4 v8, 0x5

    const/4 v9, 0x5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    const-string v12, "ActivityStarter"
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :try_start_8
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Start activity "

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " failed. Blocked due to S Voice not allowed."

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    const/4 v10, 0x0

    move-object/from16 v17, v13

    move-object v13, v14

    const/4 v2, 0x1

    move v14, v15

    :try_start_9
    invoke-static/range {v8 .. v14}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    return v16

    :catch_3
    move-exception v0

    goto :goto_8

    :catch_4
    move-exception v0

    move v2, v14

    goto :goto_8

    :cond_d
    const/4 v2, 0x1

    :goto_7
    goto :goto_a

    :catch_5
    move-exception v0

    const/4 v2, 0x1

    :goto_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a

    :cond_e
    :goto_9
    const/4 v2, 0x1

    :try_start_a
    const-string/jumbo v0, "kioskmode"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/kiosk/IKioskMode$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/kiosk/IKioskMode;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-interface {v0, v2, v15}, Lcom/samsung/android/knox/kiosk/IKioskMode;->isTaskManagerAllowedAsUser(ZI)Z

    move-result v8

    if-nez v8, :cond_f

    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    const/4 v8, 0x5

    const/4 v9, 0x5

    const/4 v10, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    const-string v12, "ActivityStarter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Start activity "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " failed. Task manager is not allowed."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move v14, v15

    invoke-static/range {v8 .. v14}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    return v16

    :catch_6
    move-exception v0

    const-string v8, "ActivityManager"

    const-string v9, "Is edm running?"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    nop

    :goto_a
    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    :try_start_b
    const-string/jumbo v0, "password_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/security/PasswordPolicy;

    const-string/jumbo v8, "security_policy"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/security/SecurityPolicy;

    move-object v14, v8

    if-eqz v0, :cond_10

    invoke-virtual {v0, v15}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedAsUser(I)I

    move-result v8

    if-lez v8, :cond_10

    invoke-direct {v1, v15}, Lcom/android/server/am/ActivityStarter;->isPersona(I)Z

    move-result v8

    if-eqz v8, :cond_12

    :cond_10
    if-eqz v14, :cond_11

    invoke-virtual {v14, v15}, Lcom/android/server/enterprise/security/SecurityPolicy;->isDodBannerVisibleAsUser(I)Z

    move-result v8

    if-nez v8, :cond_12

    :cond_11
    iget-object v8, v1, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_17

    if-eqz v0, :cond_17

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/knox/SemPersonaManager;->getKioskId()I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedAsUser(I)I

    move-result v8

    if-lez v8, :cond_17

    :cond_12
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v8

    invoke-interface {v8, v2}, Landroid/app/IActivityManager;->getTasks(I)Ljava/util/List;

    move-result-object v8

    move-object v13, v8

    if-eqz v13, :cond_17

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_17

    const/4 v8, 0x0

    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v8, v9, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    move-object v12, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    move-object v11, v10

    sget-object v10, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->enforcePwdExceptions:[Ljava/lang/String;

    array-length v2, v10

    move/from16 v17, v9

    const/4 v9, 0x0

    :goto_b
    if-ge v9, v2, :cond_16

    aget-object v18, v10, v9

    move-object/from16 v22, v18

    if-eqz v12, :cond_13

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_14

    const/16 v17, 0x1

    goto :goto_c

    :cond_13
    move-object/from16 v23, v0

    move-object/from16 v0, v22

    :cond_14
    :goto_c
    if-eqz v11, :cond_15

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_15

    const/4 v8, 0x1

    nop

    move v0, v8

    goto :goto_d

    :cond_15
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v23

    goto :goto_b

    :cond_16
    move-object/from16 v23, v0

    move v0, v8

    :goto_d
    if-eqz v17, :cond_17

    if-nez v0, :cond_17

    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    const/4 v8, 0x5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    const-string v18, "ActivityStarter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Start activity "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " failed. Blocked due to password change enforcement."

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/4 v9, 0x5

    const/4 v10, 0x0

    move-object/from16 v20, v11

    move v11, v2

    move-object v2, v12

    move-object/from16 v12, v18

    move-object/from16 v18, v13

    move-object/from16 v13, v19

    move-object/from16 v19, v14

    move v14, v15

    invoke-static/range {v8 .. v14}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    return v16

    :cond_17
    goto :goto_e

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_e
    :try_start_c
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/sec/enterprise/ApplicationPolicy;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v7, v2, v15}, Landroid/sec/enterprise/ApplicationPolicy;->getApplicationStateEnabledAsUser(Ljava/lang/String;ZI)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v2, "ActivityStarter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to open "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    return v16

    :cond_18
    goto :goto_f

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_19
    :goto_f
    if-eqz v4, :cond_1a

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    move/from16 v2, p3

    if-ne v2, v0, :cond_1b

    iget-object v0, v1, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, v0}, Lcom/android/server/am/SafeActivityOptions;->getOptions(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getStartedByMDMAdmin()Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_10

    :cond_1a
    move/from16 v2, p3

    :cond_1b
    :goto_10
    if-eqz v3, :cond_1d

    iget-object v7, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v1, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, v15, v7}, Lcom/android/server/am/ActivityStackSupervisor;->findActivityLockedByPackage(ILjava/lang/String;)Lcom/android/server/am/ActivityRecord;

    move-result-object v17

    if-nez v17, :cond_1d

    :try_start_d
    const-string v0, "application_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    if-eqz v0, :cond_1c

    invoke-virtual {v0, v7, v15}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationStartDisabledAsUser(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_1c

    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to start "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " which is at prevent start black list"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    const/4 v8, 0x5

    const/4 v9, 0x5

    const/4 v10, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    const-string v12, "ActivityStarter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Start activity "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " failed"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move v14, v15

    invoke-static/range {v8 .. v14}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    return v16

    :cond_1c
    const/4 v8, 0x5

    const/4 v9, 0x5

    const/4 v10, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    const-string v12, "ActivityStarter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Start activity "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " succeeded"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move v14, v15

    invoke-static/range {v8 .. v14}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    goto :goto_11

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1d
    :goto_11
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    const/4 v7, 0x0

    return v7
.end method

.method private computeLaunchingTaskFlags()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/high16 v5, 0x10000000

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    if-eqz v0, :cond_5

    invoke-direct {p0, v4, v2}, Lcom/android/server/am/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v8, v8, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caller with mInTask "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " has root "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but target is singleInstance/Task"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to launch singleInstance/Task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " into different task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    if-nez v6, :cond_3

    const v1, 0x18082000

    iget v7, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const v8, -0x18082001

    and-int/2addr v7, v8

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v8

    const v9, 0x18082000

    and-int/2addr v8, v9

    or-int/2addr v7, v8

    iput v7, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget v8, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iget-object v8, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v7, v8}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    iput-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    goto :goto_1

    :cond_3
    iget v7, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v7, v5

    if-eqz v7, :cond_4

    iput-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    goto :goto_1

    :cond_4
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    :goto_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launching into task without base intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->isResolverActivity()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-eqz v0, :cond_9

    :cond_7
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/android/server/am/ActivityRecord;->isMainIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_8

    iput-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    goto :goto_2

    :cond_8
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-nez v0, :cond_a

    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v0, v5

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    if-nez v0, :cond_c

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startActivity called from non-Activity context; forcing Intent.FLAG_ACTIVITY_NEW_TASK for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v5

    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    if-ne v0, v4, :cond_b

    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v5

    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    goto :goto_3

    :cond_b
    invoke-direct {p0, v4, v2}, Lcom/android/server/am/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v5

    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    :cond_c
    :goto_3
    return-void
.end method

.method static computeResolveFilterUid(III)I
    .locals 1

    const/16 v0, -0x2710

    if-eq p2, v0, :cond_0

    nop

    move v0, p2

    goto :goto_0

    :cond_0
    if-ltz p0, :cond_1

    move v0, p0

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    return v0
.end method

.method private computeSourceStack()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    return-void

    :cond_1
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x10000000

    and-int/2addr v0, v2

    if-nez v0, :cond_3

    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startActivity called from finishing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "; forcing Intent.FLAG_ACTIVITY_NEW_TASK for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    iput-object v2, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    :cond_3
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    return-void
.end method

.method private computeStackFocus(Lcom/android/server/am/ActivityRecord;ZILandroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;
    .locals 7

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    invoke-direct {p0, p1, p3, v0, p4}, Lcom/android/server/am/ActivityStarter;->getLaunchStack(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    return-object v2

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityStarter;->canLaunchIntoFocusedStack(Lcom/android/server/am/ActivityRecord;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    return-object v3

    :cond_3
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v4, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    invoke-virtual {v3, v4, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getValidLaunchStackOnDisplay(ILcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v4, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    invoke-virtual {v3, p1, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getNextValidLaunchStackLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    :cond_4
    if-nez v1, :cond_7

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    :goto_1
    if-ltz v4, :cond_6

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v6

    if-nez v6, :cond_5

    return-object v1

    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, p1, p4, v0, v5}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    :cond_7
    return-object v1
.end method

.method private createLaunchIntent(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 20

    move-object/from16 v7, p1

    if-eqz v7, :cond_0

    iget-boolean v0, v7, Landroid/content/pm/AuxiliaryResolveInfo;->needsPhaseTwo:Z

    if-eqz v0, :cond_0

    move-object/from16 v8, p0

    iget-object v0, v8, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    move-object v1, v7

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/PackageManagerInternal;->requestInstantAppResolutionPhaseTwo(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V

    goto :goto_0

    :cond_0
    move-object/from16 v8, p0

    :goto_0
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/InstantAppResolver;->sanitizeIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v10

    const/4 v0, 0x0

    if-nez v7, :cond_1

    move-object v11, v0

    goto :goto_1

    :cond_1
    iget-object v1, v7, Landroid/content/pm/AuxiliaryResolveInfo;->failureIntent:Landroid/content/Intent;

    move-object v11, v1

    :goto_1
    if-nez v7, :cond_2

    move-object/from16 v16, v0

    goto :goto_2

    :cond_2
    iget-object v1, v7, Landroid/content/pm/AuxiliaryResolveInfo;->installFailureActivity:Landroid/content/ComponentName;

    move-object/from16 v16, v1

    :goto_2
    if-nez v7, :cond_3

    move-object/from16 v17, v0

    goto :goto_3

    :cond_3
    iget-object v1, v7, Landroid/content/pm/AuxiliaryResolveInfo;->token:Ljava/lang/String;

    move-object/from16 v17, v1

    :goto_3
    if-eqz v7, :cond_4

    iget-boolean v1, v7, Landroid/content/pm/AuxiliaryResolveInfo;->needsPhaseTwo:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    move/from16 v18, v1

    if-nez v7, :cond_5

    :goto_5
    move-object/from16 v19, v0

    goto :goto_6

    :cond_5
    iget-object v0, v7, Landroid/content/pm/AuxiliaryResolveInfo;->filters:Ljava/util/List;

    goto :goto_5

    :goto_6
    move-object/from16 v9, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move/from16 v15, p6

    invoke-static/range {v9 .. v19}, Lcom/android/server/pm/InstantAppResolver;->buildEphemeralInstallerIntent(Landroid/content/Intent;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;ZLjava/util/List;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private deliverNewIntent(Lcom/android/server/am/ActivityRecord;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mIntentDelivered:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x7533

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mIntentDelivered:Z

    return-void
.end method

.method static getExternalResult(I)I
    .locals 1

    const/16 v0, 0x66

    if-eq p0, v0, :cond_0

    move v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getLaunchStack(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;
    .locals 10

    nop

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isActivityTypeStandardOrUndefined()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isResizeable()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Landroid/app/ActivityOptions;->getForceLaunchWindowingMode()I

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    move v7, v0

    goto :goto_0

    :cond_0
    move v7, v1

    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v6, 0x1

    move-object v3, p1

    move-object v4, p4

    move-object v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;ZI)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getPairWindowingMode()I

    move-result v0

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    if-eqz p4, :cond_4

    invoke-virtual {p4}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v3

    goto :goto_2

    :cond_4
    move v3, v2

    :goto_2
    if-eqz v0, :cond_8

    if-nez v3, :cond_8

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isActivityTypeStandardOrUndefined()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isResizeable()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->isStartedFromDummyInPairMode()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v3

    goto :goto_3

    :cond_5
    move v3, v0

    :goto_3
    if-eqz v3, :cond_8

    if-nez p4, :cond_6

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p4

    :cond_6
    invoke-virtual {p4, v3}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    iget v2, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    if-eqz v2, :cond_7

    iget v1, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    :goto_4
    move v9, v1

    goto :goto_5

    :cond_7
    goto :goto_4

    :goto_5
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v8, 0x1

    move-object v5, p1

    move-object v6, p4

    move-object v7, p3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;ZI)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    return-object v1

    :cond_8
    if-eqz p4, :cond_9

    invoke-virtual {p4}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v0

    goto :goto_6

    :cond_9
    move v0, v2

    :goto_6
    if-nez v0, :cond_12

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isActivityTypeStandardOrUndefined()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isResizeable()Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_a

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.samsung.android.sdk.multiwindow.freeform.launch_in_focusedstack"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isHomeOrRecentsStack()Z

    move-result v4

    if-nez v4, :cond_a

    const/4 v3, 0x1

    :cond_a
    if-eqz v3, :cond_b

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v0

    goto :goto_7

    :cond_b
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->inFreeformWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->inFreeformWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_c
    const/4 v0, 0x5

    goto :goto_7

    :cond_d
    if-eqz p4, :cond_e

    invoke-virtual {p4}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v4

    if-eqz v4, :cond_e

    const/4 v0, 0x5

    :cond_e
    :goto_7
    if-eqz v0, :cond_12

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_USAGE_LOGGING:Z

    if-eqz v2, :cond_f

    const/4 v2, 0x5

    if-ne v0, v2, :cond_f

    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/am/ActivityStarter;->mForceFreeformMode:I

    :cond_f
    if-nez p4, :cond_10

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p4

    :cond_10
    invoke-virtual {p4, v0}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    iget v2, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    if-eqz v2, :cond_11

    iget v1, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    :goto_8
    move v9, v1

    goto :goto_9

    :cond_11
    goto :goto_8

    :goto_9
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v8, 0x1

    move-object v5, p1

    move-object v6, p4

    move-object v7, p3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;ZI)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    return-object v1

    :cond_12
    and-int/lit16 v0, p2, 0x1000

    const/4 v3, 0x1

    if-eqz v0, :cond_1a

    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    if-eqz v0, :cond_13

    goto :goto_b

    :cond_13
    if-eqz p3, :cond_14

    invoke-virtual {p3}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    goto :goto_a

    :cond_14
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    :goto_a
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eq v0, v1, :cond_15

    return-object v0

    :cond_15
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    if-ne p3, v1, :cond_16

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    return-object v1

    :cond_16
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    if-eq v1, v0, :cond_17

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    :cond_17
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1, p1, v2, p3}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivityType(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;)I

    move-result v1

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {v2, v4, v1, v3}, Lcom/android/server/am/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    return-object v2

    :cond_18
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    if-nez v2, :cond_19

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, p1, p4, p3, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    return-object v2

    :cond_19
    return-object v1

    :cond_1a
    :goto_b
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    if-eqz v0, :cond_1b

    iget v1, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    :goto_c
    move v9, v1

    goto :goto_d

    :cond_1b
    goto :goto_c

    :goto_d
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    if-eqz p4, :cond_1d

    invoke-virtual {p4}, Landroid/app/ActivityOptions;->getAvoidMoveToFront()Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_e

    :cond_1c
    move v8, v2

    goto :goto_f

    :cond_1d
    :goto_e
    nop

    move v8, v3

    :goto_f
    move-object v5, p1

    move-object v6, p4

    move-object v7, p3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;ZI)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method private getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->personaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->personaManager:Lcom/samsung/android/knox/SemPersonaManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->personaManager:Lcom/samsung/android/knox/SemPersonaManager;

    return-object v0
.end method

.method private getPreferedDisplayId(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)I
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    iget v2, p2, Lcom/android/server/am/ActivityRecord;->vrActivityType:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz p2, :cond_2

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    if-nez v2, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    return v1

    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, v2, Lcom/android/server/am/ActivityManagerService;->mVr2dDisplayId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    return v2

    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v4

    goto :goto_1

    :cond_4
    move v4, v3

    :goto_1
    if-eq v4, v3, :cond_5

    return v4

    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v5

    goto :goto_2

    :cond_6
    move v5, v3

    :goto_2
    move v2, v5

    if-eq v2, v3, :cond_7

    return v2

    :cond_7
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mSamsungActivityManager:Lcom/android/server/am/SamsungActivityManagerService;

    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v6, v6, Lcom/android/server/am/ActivityStarter$Request;->realCallingPid:I

    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v7, v7, Lcom/android/server/am/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/android/server/am/SamsungActivityManagerService;->getProcessDisplayVS(ILjava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_8

    return v2

    :cond_8
    return v1
.end method

.method private getReusableIntentActivity()Lcom/android/server/am/ActivityRecord;
    .locals 9

    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v5, 0x8000000

    and-int/2addr v0, v5

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0, v2, v1}, Lcom/android/server/am/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v5, :cond_3

    move v5, v4

    goto :goto_1

    :cond_3
    move v5, v3

    :goto_1
    and-int/2addr v0, v5

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_5

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    move-object v5, v2

    goto :goto_3

    :cond_5
    if-eqz v0, :cond_9

    iget v6, p0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    if-ne v2, v6, :cond_6

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->isActivityTypeHome()Z

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    goto :goto_3

    :cond_6
    iget v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v7, v7, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v8, p0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    if-eq v1, v8, :cond_7

    move v3, v4

    nop

    :cond_7
    invoke-virtual {v2, v6, v7, v3}, Lcom/android/server/am/ActivityStackSupervisor;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    goto :goto_3

    :cond_8
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->findTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    :cond_9
    :goto_3
    return-object v5
.end method

.method static isDocumentLaunchesIntoExisting(I)Z
    .locals 1

    const/high16 v0, 0x80000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/high16 v0, 0x8000000

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isLaunchModeOneOf(II)Z
    .locals 1

    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isPersona(I)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private logFreeformBehavior()V
    .locals 5

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/am/ActivityStarter;->mForceFreeformMode:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "LaunchPolicy"

    goto :goto_0

    :pswitch_1
    return-void

    :goto_0
    const-string v1, "FFBY"

    const-string v2, "FFEP"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    move-object v4, v0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    :goto_1
    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->insertLogForMW(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onExecutionComplete()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mController:Lcom/android/server/am/ActivityStartController;

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityStartController;->onExecutionComplete(Lcom/android/server/am/ActivityStarter;)V

    return-void
.end method

.method private resumeTargetStackIfNeeded()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v1, v1, Lcom/android/server/am/ActivityRecord;->userId:I

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->updateUserStackLocked(ILcom/android/server/am/ActivityStack;)V

    return-void
.end method

.method private sendNewTaskResultRequestIfNeeded()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v3, 0x10000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    const-string v2, "ActivityManager"

    const-string v3, "Activity is launching as a new task, so cancelling activity result."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v6, v2, Lcom/android/server/am/ActivityRecord;->requestCode:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iput-object v1, v2, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    :cond_1
    return-void
.end method

.method private setInitialState(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;ZILcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Lcom/android/server/am/ActivityStarter;->reset(Z)V

    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mIsDockMinimized:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/am/ActivityStarter;->mDockMinimizedTopActivity:Lcom/android/server/am/ActivityRecord;

    :cond_0
    if-eqz v12, :cond_3

    iget-boolean v1, v12, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v1, :cond_3

    invoke-virtual/range {p6 .. p6}, Lcom/android/server/am/ActivityRecord;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    if-nez p2, :cond_1

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object/from16 v1, p2

    :goto_0
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    :cond_2
    move-object v14, v1

    goto :goto_1

    :cond_3
    move-object/from16 v14, p2

    :goto_1
    iput-object v8, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v8, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iput-object v1, v0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    iput-object v14, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget v1, v8, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    iput v1, v0, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    iput-object v12, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v15, p7

    iput-object v15, v0, Lcom/android/server/am/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    move-object/from16 v7, p8

    iput-object v7, v0, Lcom/android/server/am/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-direct {v0, v1, v2, v14}, Lcom/android/server/am/ActivityStarter;->getPreferedDisplayId(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)I

    move-result v1

    iput v1, v0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-virtual {v1}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->reset()V

    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchParamsController()Lcom/android/server/am/LaunchParamsController;

    move-result-object v1

    const/4 v3, 0x0

    iget-object v6, v0, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    move-object v2, v9

    move-object v4, v8

    move-object v5, v12

    move-object/from16 v16, v6

    move-object v6, v14

    move-object/from16 v7, v16

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/LaunchParamsController;->calculate(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/LaunchParamsController$LaunchParams;)V

    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget v1, v1, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    const/4 v2, -0x1

    const/4 v3, 0x2

    if-eq v1, v2, :cond_4

    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mMultiDisplayManager:Lcom/android/server/am/MultiDisplayManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/MultiDisplayManagerService;->getDexModeLocked()I

    move-result v1

    if-ne v1, v3, :cond_4

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget v4, v4, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    iput v4, v0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    :cond_4
    iget v1, v8, Lcom/android/server/am/ActivityRecord;->launchMode:I

    iput v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    iget v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ne v4, v1, :cond_5

    move v1, v5

    goto :goto_2

    :cond_5
    move v1, v13

    :goto_2
    iget v6, v0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    if-ne v3, v6, :cond_6

    move v6, v5

    goto :goto_3

    :cond_6
    move v6, v13

    :goto_3
    iget-object v7, v0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getFlags()I

    move-result v7

    invoke-direct {v0, v8, v1, v6, v7}, Lcom/android/server/am/ActivityStarter;->adjustLaunchFlagsToDocumentMode(Lcom/android/server/am/ActivityRecord;ZZI)I

    move-result v1

    iput v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    iget-boolean v1, v8, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    const/high16 v6, 0x80000

    if-eqz v1, :cond_7

    invoke-direct {v0, v3, v4}, Lcom/android/server/am/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v1

    if-nez v1, :cond_7

    iget v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v1, v6

    if-eqz v1, :cond_7

    move v1, v5

    goto :goto_4

    :cond_7
    move v1, v13

    :goto_4
    iput-boolean v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->sendNewTaskResultRequestIfNeeded()V

    iget v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v1, v6

    const/high16 v4, 0x10000000

    if-eqz v1, :cond_8

    iget-object v1, v8, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v1, :cond_8

    iget v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v1, v4

    iput v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    :cond_8
    iget v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_a

    iget-boolean v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    if-nez v1, :cond_9

    iget-object v1, v8, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    if-ne v1, v3, :cond_a

    :cond_9
    iget v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v3, 0x8000000

    or-int/2addr v1, v3

    iput v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    :cond_a
    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v3, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x40000

    and-int/2addr v3, v4

    if-nez v3, :cond_b

    move v3, v5

    goto :goto_5

    :cond_b
    move v3, v13

    :goto_5
    iput-boolean v3, v1, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    iput-boolean v10, v0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v10, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->okToShowLocked()Z

    move-result v1

    if-nez v1, :cond_d

    :cond_c
    iput-boolean v5, v8, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    iput-boolean v13, v0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    :cond_d
    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v3, 0x0

    if-eqz v1, :cond_11

    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v1

    if-eq v1, v2, :cond_10

    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getTaskOverlay()Z

    move-result v1

    if-eqz v1, :cond_10

    iput-boolean v5, v8, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->canTaskOverlayResume()Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    goto :goto_6

    :cond_e
    move-object v2, v3

    :goto_6
    if-eqz v2, :cond_f

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v4

    if-nez v4, :cond_f

    iput-boolean v13, v0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    iput-boolean v5, v0, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    :cond_f
    goto :goto_7

    :cond_10
    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getAvoidMoveToFront()Z

    move-result v1

    if-eqz v1, :cond_11

    iput-boolean v13, v0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    iput-boolean v5, v0, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    :cond_11
    :goto_7
    iget v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x1000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_12

    move-object v1, v8

    goto :goto_8

    :cond_12
    move-object v1, v3

    :goto_8
    iput-object v1, v0, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    iput-object v9, v0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    if-eqz v9, :cond_13

    iget-boolean v1, v9, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-nez v1, :cond_13

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting activity in task not in recents: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v3, v0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    :cond_13
    iput v11, v0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    and-int/lit8 v1, v11, 0x1

    if-eqz v1, :cond_15

    move-object v1, v12

    if-nez v1, :cond_14

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    :cond_14
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v3, v8, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    iget v2, v0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    and-int/lit8 v2, v2, -0x2

    iput v2, v0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    :cond_15
    iget v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_16

    move v1, v5

    goto :goto_9

    :cond_16
    move v1, v13

    :goto_9
    iput-boolean v1, v0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_USAGE_LOGGING:Z

    if-eqz v1, :cond_17

    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->isFromPendingIntent()Z

    move-result v1

    if-eqz v1, :cond_17

    iput v5, v0, Lcom/android/server/am/ActivityStarter;->mForceFreeformMode:I

    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v13}, Landroid/content/Intent;->setFromPendingIntent(Z)V

    :cond_17
    return-void
.end method

.method private setTargetStackAndMoveToFrontIfNeeded(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v4, v3

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    :goto_0
    nop

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isActivityTypeStandardOrUndefined()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isResizeable()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getForceLaunchWindowingMode()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getWindowingMode()I

    move-result v5

    iget-object v7, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v7}, Landroid/app/ActivityOptions;->getForceLaunchWindowingMode()I

    move-result v7

    if-eq v5, v7, :cond_1

    iget v5, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-direct {v0, v1, v5, v7, v8}, Lcom/android/server/am/ActivityStarter;->getLaunchStack(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v9

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    const-string/jumbo v15, "reparentToForceLaunchWindowingMode"

    move-object v10, v5

    invoke-virtual/range {v9 .. v15}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZLjava/lang/String;)Z

    iput-boolean v6, v0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    iput-object v5, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    :cond_1
    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->isPairWindowingMode()Z

    move-result v5

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    goto :goto_1

    :cond_2
    move-object v7, v3

    :goto_1
    const/4 v8, 0x0

    if-eqz v7, :cond_18

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v9

    if-ne v7, v9, :cond_3

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v9

    if-ne v7, v9, :cond_3

    if-eqz v5, :cond_18

    :cond_3
    iget-boolean v9, v0, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    if-nez v9, :cond_18

    iget-object v9, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v9, v9, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v10, 0x400000

    invoke-virtual {v9, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-nez v5, :cond_4

    iget-object v9, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v9, :cond_4

    iget-object v9, v0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    if-eqz v9, :cond_18

    iget-object v9, v0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v9

    iget-object v10, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v10}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v10

    if-ne v9, v10, :cond_18

    :cond_4
    iget-boolean v9, v0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    if-eqz v9, :cond_5

    iget-object v9, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v9, :cond_5

    iget-object v9, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/android/server/am/ActivityRecord;->setTaskToAffiliateWith(Lcom/android/server/am/TaskRecord;)V

    :cond_5
    iget-object v9, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v10, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    iget-object v11, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v11}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-direct {v0, v9, v10, v11, v12}, Lcom/android/server/am/ActivityStarter;->getLaunchStack(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v12

    if-eqz v9, :cond_8

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->inFreeformWindowingMode()Z

    move-result v10

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->inFreeformWindowingMode()Z

    move-result v10

    if-nez v10, :cond_8

    iget-object v10, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v10, :cond_6

    iget-object v10, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v10}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v10

    goto :goto_2

    :cond_6
    move-object v10, v3

    :goto_2
    if-eqz v10, :cond_7

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v11, v12, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    iget v11, v9, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    iput v11, v12, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBoundsDisplayId:I

    :cond_7
    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x1

    const-string/jumbo v19, "launchToFreeform"

    move-object v13, v12

    move-object v14, v9

    invoke-virtual/range {v13 .. v19}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZLjava/lang/String;)Z

    iput-boolean v6, v0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->logFreeformBehavior()V

    :cond_8
    iget v10, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const v11, 0x10008000

    and-int/2addr v10, v11

    if-ne v10, v11, :cond_9

    move v10, v6

    goto :goto_3

    :cond_9
    move v10, v8

    :goto_3
    move/from16 v20, v10

    if-nez v20, :cond_14

    if-eqz v9, :cond_13

    iget-object v10, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-ne v9, v10, :cond_a

    move-object/from16 v21, v12

    goto/16 :goto_7

    :cond_a
    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->inSplitScreenWindowingMode()Z

    move-result v10

    if-eqz v10, :cond_f

    iget v10, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/lit16 v10, v10, 0x1000

    if-eqz v10, :cond_b

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x1

    const-string/jumbo v19, "launchToSide"

    move-object v13, v12

    move-object v14, v9

    invoke-virtual/range {v13 .. v19}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZLjava/lang/String;)Z

    goto :goto_4

    :cond_b
    if-eqz v5, :cond_c

    iget-object v10, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-eq v10, v9, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v13

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x1

    const-string/jumbo v19, "startPairActivities"

    move-object v14, v9

    invoke-virtual/range {v13 .. v19}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZLjava/lang/String;)Z

    goto :goto_4

    :cond_c
    iget-object v10, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->isFreeformStackMinimized()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-virtual {v12, v6}, Lcom/android/server/am/TaskRecord;->unminimizeFreeformTask(Z)V

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x1

    const-string/jumbo v19, "launchToSplitscreenSecondary"

    move-object v13, v12

    move-object v14, v9

    invoke-virtual/range {v13 .. v19}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZLjava/lang/String;)Z

    :cond_d
    :goto_4
    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v10

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/server/am/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/am/ActivityStack;

    move-result-object v10

    if-eq v9, v10, :cond_e

    move v10, v6

    goto :goto_5

    :cond_e
    move v10, v8

    :goto_5
    iput-boolean v10, v0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    goto :goto_6

    :cond_f
    iget v10, v9, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    iget-object v11, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget v11, v11, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-eq v10, v11, :cond_10

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v13

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x1

    const-string/jumbo v19, "reparentToDisplay"

    move-object v14, v9

    invoke-virtual/range {v13 .. v19}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZLjava/lang/String;)Z

    iput-boolean v6, v0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    :goto_6
    move-object/from16 v21, v12

    goto/16 :goto_8

    :cond_10
    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v10

    if-eqz v10, :cond_11

    iget-object v10, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v10

    if-nez v10, :cond_11

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v13

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x1

    const-string/jumbo v19, "reparentingHome"

    move-object v14, v9

    invoke-virtual/range {v13 .. v19}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZLjava/lang/String;)Z

    iput-boolean v6, v0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    goto :goto_6

    :cond_11
    iget-object v10, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-eq v9, v10, :cond_12

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->getActivityType()I

    move-result v10

    iget-object v11, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v11}, Lcom/android/server/am/ActivityStack;->getActivityType()I

    move-result v11

    if-ne v10, v11, :cond_12

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    if-nez v10, :cond_12

    iget-boolean v10, v0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v10, :cond_12

    iget-object v10, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-boolean v13, v0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iget-object v14, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v11, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v15, v11, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string v16, "bringingFoundTaskToFront"

    move-object v11, v12

    move-object/from16 v21, v12

    move v12, v13

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, v16

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    iput-boolean v6, v0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    goto :goto_8

    :cond_12
    move-object/from16 v21, v12

    goto :goto_8

    :cond_13
    move-object/from16 v21, v12

    :goto_7
    iget-object v10, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-boolean v12, v0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iget-object v13, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v11, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v14, v11, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string v15, "bringingFoundTaskToFront"

    move-object/from16 v11, v21

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    iput-boolean v6, v0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    :goto_8
    iput-object v3, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1, v3, v8, v6}, Lcom/android/server/am/ActivityRecord;->showStartingWindow(Lcom/android/server/am/ActivityRecord;ZZ)V

    goto :goto_9

    :cond_14
    move-object/from16 v21, v12

    if-eqz v5, :cond_15

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->isActivityTypeStandard()Z

    move-result v3

    if-eqz v3, :cond_15

    iget v3, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/lit16 v3, v3, 0x1000

    if-nez v3, :cond_15

    if-eqz v9, :cond_17

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-eq v9, v3, :cond_17

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v13

    const/4 v15, 0x0

    const/16 v16, 0x2

    const/16 v17, 0x1

    const/16 v18, 0x1

    const-string/jumbo v19, "startPairActivities_with_clearTask"

    move-object v14, v9

    invoke-virtual/range {v13 .. v19}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZLjava/lang/String;)Z

    goto :goto_9

    :cond_15
    if-eqz v9, :cond_17

    iget v3, v9, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    const/4 v10, 0x2

    if-eq v3, v10, :cond_16

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget v3, v3, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-ne v3, v10, :cond_17

    :cond_16
    iget v3, v9, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    iget-object v10, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget v10, v10, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-eq v3, v10, :cond_17

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v13

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x1

    const-string/jumbo v19, "reparentToDisplay"

    move-object v14, v9

    invoke-virtual/range {v13 .. v19}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZLjava/lang/String;)Z

    iput-boolean v6, v0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    :cond_17
    :goto_9
    if-eqz v9, :cond_18

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    if-eq v9, v3, :cond_18

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->remove()V

    :cond_18
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    if-nez v3, :cond_19

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v3, :cond_19

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const-string/jumbo v6, "intentActivityFound"

    invoke-virtual {v3, v6}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    :cond_19
    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    iget-object v9, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3, v6, v8, v8, v9}, Lcom/android/server/am/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;IILcom/android/server/am/ActivityStack;)V

    iget v3, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v6, 0x200000

    and-int/2addr v3, v6

    if-eqz v3, :cond_1a

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v6, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3, v1, v6}, Lcom/android/server/am/ActivityStack;->resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    return-object v3

    :cond_1a
    return-object v1
.end method

.method private setTaskFromInTask()I
    .locals 15

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted Lock Task Mode violation mStartActivity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x65

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v3, v3, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v3, 0x20000000

    and-int/2addr v2, v3

    const/4 v3, 0x1

    if-nez v2, :cond_1

    invoke-direct {p0, v3, v1}, Lcom/android/server/am/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iget-boolean v6, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v8, v1, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string/jumbo v9, "inTaskToFront"

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_2

    return v3

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStarter;->deliverNewIntent(Lcom/android/server/am/ActivityRecord;)V

    const/4 v1, 0x3

    return v1

    :cond_3
    iget-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    if-nez v2, :cond_4

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iget-boolean v5, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string/jumbo v8, "inTaskToFront"

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    return v1

    :cond_4
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget-object v2, v2, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mMultiDisplayManager:Lcom/android/server/am/MultiDisplayManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/MultiDisplayManagerService;->getDexModeLocked()I

    move-result v3

    if-ne v3, v1, :cond_5

    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    if-ne v3, v1, :cond_5

    iget v2, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    :cond_5
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    const/4 v7, 0x1

    move v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;ZI)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    if-eq v1, v3, :cond_6

    iget-object v8, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const-string/jumbo v14, "inTaskToFront"

    move-object v9, v1

    invoke-virtual/range {v8 .. v14}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZLjava/lang/String;)Z

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    :cond_6
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget-object v4, v4, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/ActivityStarter;->updateBounds(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V

    :cond_7
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iget-boolean v7, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iget-object v8, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v9, v1, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string/jumbo v10, "inTaskToFront"

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    const-string/jumbo v2, "setTaskFromInTask"

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1
.end method

.method private setTaskFromIntentActivity(Lcom/android/server/am/ActivityRecord;)V
    .locals 7

    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const v1, 0x10008000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v2}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    goto/16 :goto_1

    :cond_0
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-nez v0, :cond_7

    const/4 v0, 0x3

    const/4 v2, 0x2

    invoke-direct {p0, v0, v2}, Lcom/android/server/am/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x20000000

    and-int/2addr v0, v2

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    if-ne v1, v0, :cond_4

    :cond_2
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStarter;->deliverNewIntent(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v2}, Lcom/android/server/am/TaskRecord;->isSameIntentFilter(Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_9

    iput-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    iput-object p1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x200000

    and-int/2addr v0, v2

    if-nez v0, :cond_6

    iput-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    iput-object p1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    if-nez v0, :cond_9

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_1

    :cond_7
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_8

    iput-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;)V

    iput-object p1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/server/am/ActivityStarter;->computeStackFocus(Lcom/android/server/am/ActivityRecord;ZILandroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-boolean v4, p0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    xor-int/2addr v1, v4

    const-string/jumbo v4, "startActivityUnchecked"

    invoke-virtual {v3, v2, v1, v4}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZLjava/lang/String;)V

    :cond_8
    nop

    :cond_9
    :goto_1
    return-void
.end method

.method private setTaskFromReuseOrCreateNewTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v3, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v5, 0x1

    invoke-direct {v0, v2, v5, v3, v4}, Lcom/android/server/am/ActivityStarter;->computeStackFocus(Lcom/android/server/am/ActivityRecord;ZILandroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    if-nez v2, :cond_2

    iget-object v6, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v3, v3, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getNextTaskIdForUserLocked(I)I

    move-result v7

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    :goto_0
    move-object v8, v2

    goto :goto_1

    :cond_0
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    goto :goto_0

    :goto_1
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    :goto_2
    move-object v9, v2

    goto :goto_3

    :cond_1
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    goto :goto_2

    :goto_3
    iget-object v10, v0, Lcom/android/server/am/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v11, v0, Lcom/android/server/am/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    xor-int/lit8 v12, v2, 0x1

    iget-object v13, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v14, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget-object v15, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual/range {v6 .. v15}, Lcom/android/server/am/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/TaskRecord;

    move-result-object v2

    const-string/jumbo v3, "setTaskFromReuseOrCreateNewTask - mReuseTask"

    invoke-direct {v0, v2, v3}, Lcom/android/server/am/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget-object v4, v4, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/ActivityStarter;->updateBounds(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V

    goto :goto_4

    :cond_2
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    const-string/jumbo v3, "setTaskFromReuseOrCreateNewTask"

    invoke-direct {v0, v2, v3}, Lcom/android/server/am/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V

    :goto_4
    if-eqz v1, :cond_3

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityRecord;->setTaskToAffiliateWith(Lcom/android/server/am/TaskRecord;)V

    :cond_3
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted Lock Task Mode violation mStartActivity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x65

    return v2

    :cond_4
    iget-boolean v2, v0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const-string/jumbo v3, "reuseOrNewTask"

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    :cond_5
    const/4 v2, 0x0

    return v2
.end method

.method private setTaskFromSourceRecord()I
    .locals 13

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted Lock Task Mode violation mStartActivity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x65

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v8

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget v1, v1, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    goto :goto_0

    :cond_1
    iget v1, v8, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    :goto_0
    move v9, v1

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-ne v1, v0, :cond_3

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v9}, Lcom/android/server/am/ActivityRecord;->canBeLaunchedOnDisplay(I)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v11

    goto :goto_2

    :cond_3
    :goto_1
    move v1, v10

    :goto_2
    move v12, v1

    if-eqz v12, :cond_5

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityStarter;->getLaunchStack(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-nez v1, :cond_4

    iget v1, v8, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-eq v9, v1, :cond_4

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v2, v8, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getValidLaunchStackOnDisplay(ILcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    :cond_4
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getNextValidLaunchStackLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    :cond_5
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-nez v1, :cond_6

    iput-object v8, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-eq v1, v8, :cond_7

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string/jumbo v7, "launchToSide"

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZLjava/lang/String;)Z

    :cond_7
    :goto_3
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    if-eq v7, v0, :cond_8

    iget-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string/jumbo v6, "sourceTaskToFront"

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    iget-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const-string/jumbo v2, "sourceStackToFront"

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    :cond_9
    :goto_4
    iget-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/16 v4, 0x7533

    if-nez v1, :cond_c

    iget v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v5, 0x4000000

    and-int/2addr v1, v5

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v5, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v0, v1, v5}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    iput-boolean v10, p0, Lcom/android/server/am/ActivityStarter;->mKeepCurTransition:Z

    if-eqz v1, :cond_b

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityStarter;->deliverNewIntent(Lcom/android/server/am/ActivityRecord;)V

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iput-object v3, v4, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    :cond_a
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    return v2

    :cond_b
    goto :goto_5

    :cond_c
    iget-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    if-nez v1, :cond_e

    iget v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v5, 0x20000

    and-int/2addr v1, v5

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->findActivityInHistoryLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/server/am/TaskRecord;->moveActivityToFrontLocked(Lcom/android/server/am/ActivityRecord;)V

    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1, v6}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-static {v4, v6, v5}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityStarter;->deliverNewIntent(Lcom/android/server/am/ActivityRecord;)V

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iput-object v3, v4, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    :cond_d
    return v2

    :cond_e
    :goto_5
    const-string/jumbo v1, "setTaskFromSourceRecord"

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V

    return v11
.end method

.method private setTaskToCurrentTopOrCreateNewTask()V
    .locals 12

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/android/server/am/ActivityStarter;->computeStackFocus(Lcom/android/server/am/ActivityRecord;ZILandroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const-string v1, "addingToTopTask"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v3, v3, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getNextTaskIdForUserLocked(I)I

    move-result v3

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v10, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget-object v11, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/am/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/TaskRecord;

    move-result-object v1

    :goto_0
    const-string/jumbo v2, "setTaskToCurrentTopOrCreateNewTask"

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityStack;->positionChildWindowContainerAtTop(Lcom/android/server/am/TaskRecord;)V

    return-void
.end method

.method private startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILcom/android/server/am/SafeActivityOptions;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Ljava/lang/String;Z)I
    .locals 26

    move-object/from16 v15, p0

    invoke-static/range {p23 .. p23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object/from16 v14, p23

    iput-object v14, v15, Lcom/android/server/am/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v15, Lcom/android/server/am/ActivityStarter;->mLastStartActivityTimeMs:J

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/am/ActivityRecord;

    const/4 v1, 0x0

    const/16 v24, 0x0

    aput-object v1, v0, v24

    iget-object v13, v15, Lcom/android/server/am/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/am/ActivityRecord;

    move-object v0, v15

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v21, v13

    move/from16 v13, p13

    move-object/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move-object/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    move-object/from16 v22, p22

    move/from16 v23, p24

    invoke-direct/range {v0 .. v23}, Lcom/android/server/am/ActivityStarter;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILcom/android/server/am/SafeActivityOptions;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Z)I

    move-result v0

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ActivityStarter;->mLastStartActivityResult:I

    if-eqz p21, :cond_0

    iget-object v0, v1, Lcom/android/server/am/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/am/ActivityRecord;

    aget-object v0, v0, v24

    aput-object v0, p21, v24

    :cond_0
    iget v0, v1, Lcom/android/server/am/ActivityStarter;->mLastStartActivityResult:I

    invoke-static {v0}, Lcom/android/server/am/ActivityStarter;->getExternalResult(I)I

    move-result v0

    return v0

    :cond_1
    move-object v1, v15

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Need to specify a reason."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILcom/android/server/am/SafeActivityOptions;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Z)I
    .locals 82

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p4

    move-object/from16 v13, p5

    move-object/from16 v9, p9

    move-object/from16 v7, p14

    move/from16 v6, p16

    move/from16 v5, p17

    move-object/from16 v4, p18

    const/4 v0, 0x0

    if-eqz v4, :cond_0

    invoke-virtual/range {p18 .. p18}, Lcom/android/server/am/SafeActivityOptions;->popAppVerificationBundle()Landroid/os/Bundle;

    move-result-object v1

    move-object v12, v1

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v14, :cond_2

    iget-object v2, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v14}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v2, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v30, v0

    move/from16 v81, v2

    move-object v2, v1

    move/from16 v1, v81

    goto :goto_1

    :cond_1
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v30, v0

    const-string v0, "Unable to find app for caller "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " (pid="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, p12

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") when starting: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5e

    move/from16 v3, p13

    move/from16 v30, v0

    move-object v2, v1

    move/from16 v1, p12

    goto :goto_1

    :cond_2
    move/from16 v30, v0

    move/from16 v3, p13

    move-object v2, v1

    move/from16 v1, p12

    :goto_1
    const/16 v16, 0x0

    const-string v17, ""

    if-nez v30, :cond_5

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v18
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v49, v18

    move/from16 v50, v1

    :try_start_1
    const-string v1, ":android:show_fragment"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v17, v1

    if-nez v17, :cond_3

    move-object/from16 v1, v49

    if-eqz v1, :cond_4

    :try_start_2
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v16
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v17, v16

    goto :goto_2

    :catch_0
    move-exception v0

    move-object/from16 v16, v1

    goto :goto_3

    :cond_3
    move-object/from16 v1, v49

    :cond_4
    :goto_2
    move-object/from16 v16, v1

    move-object/from16 v0, v17

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v1, v49

    move-object/from16 v16, v1

    goto :goto_3

    :catch_2
    move-exception v0

    move/from16 v50, v1

    :goto_3
    const-string/jumbo v0, "unknown"

    :goto_4
    move/from16 v51, v50

    move-object v1, v15

    move-object/from16 v52, v12

    move-object v12, v2

    move-object v2, v10

    move v14, v3

    move-object/from16 v53, v12

    const/4 v12, 0x0

    move-object v3, v13

    move/from16 v4, p15

    move-object/from16 v5, p18

    move-object/from16 v6, v16

    move-object v12, v7

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/ActivityStarter;->checkStartActivityAllowedByEDM(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;ILcom/android/server/am/SafeActivityOptions;Landroid/content/ComponentName;Ljava/lang/String;)I

    move-result v30

    move-object/from16 v29, v16

    goto :goto_5

    :cond_5
    move/from16 v51, v1

    move-object/from16 v53, v2

    move v14, v3

    move-object/from16 v52, v12

    move-object v12, v7

    move-object/from16 v29, v16

    move-object/from16 v7, v17

    :goto_5
    const/4 v6, 0x0

    if-eqz v13, :cond_6

    iget-object v0, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_6

    iget-object v0, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    goto :goto_6

    :cond_6
    move v0, v6

    :goto_6
    move v5, v0

    const/4 v4, 0x1

    if-nez v30, :cond_8

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->SHIP_BUILD:Z

    if-eqz v0, :cond_7

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "START u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " {act="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " typ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " flg=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cmp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "} from uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_7
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "START u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4, v4, v4, v6}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "} from uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_7
    if-eqz v12, :cond_9

    sget-boolean v0, Lcom/sec/android/clipboardprotection/Clipboardprotection;->SEP_LITE:Z

    if-nez v0, :cond_9

    new-instance v0, Lcom/sec/android/clipboardprotection/Clpthread;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "startActivity"

    invoke-direct {v0, v12, v1, v2}, Lcom/sec/android/clipboardprotection/Clpthread;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_9
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz v9, :cond_a

    iget-object v2, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, v9}, Lcom/android/server/am/ActivityStackSupervisor;->isInAnyStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_a

    if-ltz p11, :cond_a

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_a

    move-object v1, v0

    :cond_a
    move-object v3, v0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v49

    const/high16 v0, 0x2000000

    and-int v0, v49, v0

    if-eqz v0, :cond_f

    if-eqz v3, :cond_f

    if-ltz p11, :cond_b

    invoke-static/range {p18 .. p18}, Lcom/android/server/am/SafeActivityOptions;->abort(Lcom/android/server/am/SafeActivityOptions;)V

    const/16 v0, -0x5d

    return v0

    :cond_b
    iget-object v0, v3, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->isInStackLocked()Z

    move-result v1

    if-nez v1, :cond_c

    const/4 v0, 0x0

    :cond_c
    iget-object v1, v3, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    iget v2, v3, Lcom/android/server/am/ActivityRecord;->requestCode:I

    const/4 v8, 0x0

    iput-object v8, v3, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_d

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/am/ActivityRecord;->removeResultsLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V

    :cond_d
    iget v8, v3, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    if-ne v8, v14, :cond_e

    iget-object v8, v3, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    move-object/from16 v50, v1

    move/from16 v61, v2

    move-object v12, v8

    move-object v8, v0

    goto :goto_8

    :cond_e
    move-object v8, v0

    move-object/from16 v50, v1

    move/from16 v61, v2

    goto :goto_8

    :cond_f
    move-object/from16 v50, p10

    move/from16 v61, p11

    move-object v8, v1

    :goto_8
    if-nez v30, :cond_10

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_10

    const/16 v30, -0x5b

    :cond_10
    if-nez v30, :cond_11

    if-nez v13, :cond_11

    const/16 v30, -0x5c

    :cond_11
    if-nez v30, :cond_13

    if-eqz v3, :cond_13

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_13

    const/high16 v0, 0x10000000

    and-int v0, v49, v0

    if-nez v0, :cond_13

    iget-object v0, v3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v0, v1, :cond_13

    :try_start_3
    const-string v0, "android.intent.category.VOICE"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {v0, v1, v10, v11}, Landroid/content/pm/IPackageManager;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity being started in current voice task does not support voice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    const/16 v0, -0x61

    move/from16 v30, v0

    :cond_12
    goto :goto_9

    :catch_3
    move-exception v0

    const-string v1, "ActivityManager"

    const-string v2, "Failure checking voice capabilities"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v30, -0x61

    :cond_13
    :goto_9
    if-nez v30, :cond_15

    if-eqz p7, :cond_15

    :try_start_4
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {v0, v1, v10, v11}, Landroid/content/pm/IPackageManager;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity being started in new voice task does not support: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    const/16 v0, -0x61

    move/from16 v30, v0

    :cond_14
    goto :goto_a

    :catch_4
    move-exception v0

    const-string v1, "ActivityManager"

    const-string v2, "Failure checking voice capabilities"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v30, -0x61

    :cond_15
    :goto_a
    if-nez v8, :cond_16

    const/16 v54, 0x0

    goto :goto_b

    :cond_16
    invoke-virtual {v8}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    move-object/from16 v54, v0

    :goto_b
    if-eqz v30, :cond_18

    if-eqz v8, :cond_17

    const/16 v55, -0x1

    const/16 v59, 0x0

    const/16 v60, 0x0

    move-object/from16 v56, v8

    move-object/from16 v57, v50

    move/from16 v58, v61

    invoke-virtual/range {v54 .. v60}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    :cond_17
    invoke-static/range {p18 .. p18}, Lcom/android/server/am/SafeActivityOptions;->abort(Lcom/android/server/am/SafeActivityOptions;)V

    const/16 v16, 0x5

    const/16 v17, 0x5

    const/16 v18, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v19

    const-string v20, "ActivityStarter"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start activity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move/from16 v22, v5

    invoke-static/range {v16 .. v22}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    return v30

    :cond_18
    const/4 v0, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1c

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v10, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    move v1, v4

    goto :goto_c

    :cond_19
    move v1, v6

    :goto_c
    if-eqz v1, :cond_1a

    const/4 v0, 0x1

    :cond_1a
    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move/from16 v16, v2

    move-object v2, v10

    move-object/from16 v62, v3

    move/from16 v3, v51

    move-object/from16 v17, v4

    const/4 v9, 0x1

    move v4, v14

    move/from16 v63, v5

    move/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v64, v7

    move v7, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ActivityManagerService;->checkContainerAppPermission(Landroid/content/Intent;IIILjava/lang/String;Z)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1b

    move/from16 v6, v51

    move-object/from16 v7, v53

    goto :goto_d

    :cond_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkContainerAppPermission Denial: starting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, v53

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, v51

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") with revoked permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1c
    move-object/from16 v62, v3

    move v9, v4

    move/from16 v63, v5

    move-object/from16 v64, v7

    move/from16 v6, v51

    move-object/from16 v7, v53

    :goto_d
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    if-eqz p22, :cond_1d

    move/from16 v25, v9

    goto :goto_e

    :cond_1d
    const/16 v25, 0x0

    :goto_e
    move-object/from16 v16, v0

    move-object/from16 v17, v10

    move-object/from16 v18, v13

    move-object/from16 v19, v50

    move/from16 v20, v61

    move/from16 v21, v6

    move/from16 v22, v14

    move-object/from16 v23, v12

    move/from16 v24, p19

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    move-object/from16 v28, v54

    invoke-virtual/range {v16 .. v28}, Lcom/android/server/am/ActivityStackSupervisor;->checkStartAnyActivityPermission(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIILjava/lang/String;ZZLcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack;)Z

    move-result v0

    xor-int/2addr v0, v9

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    iget-object v5, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v2, v10

    move v3, v14

    move v4, v6

    move-object/from16 v16, v5

    move-object v5, v11

    move/from16 v17, v6

    move-object/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/firewall/IntentFirewall;->checkStartActivity(Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    xor-int/2addr v1, v9

    or-int/2addr v1, v0

    move-object/from16 v6, p18

    if-eqz v6, :cond_1e

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6, v10, v13, v7, v0}, Lcom/android/server/am/SafeActivityOptions;->getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v3

    goto :goto_f

    :cond_1e
    const/4 v3, 0x0

    :goto_f
    move-object v0, v3

    if-eqz p23, :cond_1f

    iget-object v2, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getActivityStartController()Lcom/android/server/am/ActivityStartController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStartController;->getPendingRemoteAnimationRegistry()Lcom/android/server/am/PendingRemoteAnimationRegistry;

    move-result-object v2

    invoke-virtual {v2, v12, v0}, Lcom/android/server/am/PendingRemoteAnimationRegistry;->overrideOptionsIfNeeded(Ljava/lang/String;Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;

    move-result-object v0

    :cond_1f
    move-object/from16 v16, v0

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v0, :cond_20

    :try_start_5
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v0

    iget-object v2, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    iget-object v3, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Landroid/app/IActivityController;->activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v2
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    xor-int/2addr v2, v9

    or-int/2addr v1, v2

    goto :goto_10

    :catch_5
    move-exception v0

    iget-object v2, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    :cond_20
    :goto_10
    move v0, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    move/from16 v2, v63

    move/from16 v3, p15

    move/from16 v4, p16

    move/from16 v5, p17

    move-object v6, v12

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityStartInterceptor;->setStates(IIIILjava/lang/String;)V

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    move-object v2, v10

    move-object/from16 v3, p6

    move-object v4, v13

    move-object v5, v11

    move-object/from16 v6, p22

    move-object/from16 v32, v7

    move/from16 v7, v17

    move-object/from16 v51, v8

    move v8, v14

    move/from16 v65, v14

    move v14, v9

    move-object/from16 v9, v16

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/am/ActivityStartInterceptor;->intercept(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Lcom/android/server/am/TaskRecord;IILandroid/app/ActivityOptions;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v2, v15, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    iget-object v3, v15, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v15, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget-object v5, v15, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v5, v5, Lcom/android/server/am/ActivityStartInterceptor;->mInTask:Lcom/android/server/am/TaskRecord;

    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget v6, v6, Lcom/android/server/am/ActivityStartInterceptor;->mCallingPid:I

    iget-object v7, v15, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget v7, v7, Lcom/android/server/am/ActivityStartInterceptor;->mCallingUid:I

    iget-object v8, v15, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v8, v8, Lcom/android/server/am/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    move-object v10, v1

    move-object v11, v4

    move-object/from16 v53, v5

    move/from16 v65, v7

    move-object v7, v8

    goto :goto_11

    :cond_21
    move-object/from16 v2, p6

    move-object/from16 v53, p22

    move-object v3, v13

    move-object/from16 v7, v16

    move/from16 v6, v17

    :goto_11
    if-eqz v0, :cond_23

    if-eqz v51, :cond_22

    const/16 v17, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v54

    move-object/from16 v18, v51

    move-object/from16 v19, v50

    move/from16 v20, v61

    invoke-virtual/range {v16 .. v22}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    :cond_22
    invoke-static {v7}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    const/16 v16, 0x5

    const/16 v17, 0x5

    const/16 v18, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v19

    const-string v20, "ActivityStarter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start activity "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v64

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " succeeded"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move/from16 v22, v63

    invoke-static/range {v16 .. v22}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    const/16 v1, 0x66

    return v1

    :cond_23
    move-object/from16 v5, v64

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mPermissionReviewRequired:Z

    if-eqz v1, :cond_26

    if-eqz v3, :cond_26

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    iget-object v8, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move/from16 v13, v63

    invoke-virtual {v1, v8, v13}, Landroid/content/pm/PackageManagerInternal;->isPermissionsReviewRequired(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const/16 v17, 0x2

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    new-array v8, v14, [Landroid/content/Intent;

    const/4 v9, 0x0

    aput-object v10, v8, v9

    new-array v4, v14, [Ljava/lang/String;

    aput-object v11, v4, v9

    const/high16 v26, 0x50000000

    const/16 v27, 0x0

    move-object/from16 v16, v1

    move-object/from16 v18, v12

    move/from16 v19, v65

    move/from16 v20, v13

    move-object/from16 v24, v8

    move-object/from16 v25, v4

    invoke-virtual/range {v16 .. v27}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v1

    invoke-virtual {v10}, Landroid/content/Intent;->getFlags()I

    move-result v4

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.REVIEW_PERMISSIONS"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v9, v8

    const/high16 v8, 0x800000

    or-int v14, v4, v8

    invoke-virtual {v9, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v8, "android.intent.extra.PACKAGE_NAME"

    iget-object v14, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v8, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "android.intent.extra.INTENT"

    new-instance v14, Landroid/content/IntentSender;

    invoke-direct {v14, v1}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    invoke-virtual {v9, v8, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz v51, :cond_24

    const-string v8, "android.intent.extra.RESULT_NEEDED"

    const/4 v14, 0x1

    invoke-virtual {v9, v8, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_24
    move-object v14, v9

    const/16 v16, 0x0

    move/from16 v11, p16

    move/from16 v6, p15

    iget-object v8, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/16 v17, 0x0

    iget-object v10, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v10, v10, Lcom/android/server/am/ActivityStarter$Request;->filterCallingUid:I

    move-object/from16 v66, v12

    move/from16 v12, p16

    invoke-static {v11, v12, v10}, Lcom/android/server/am/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v18

    move-object/from16 v19, v9

    const/4 v10, 0x0

    move-object/from16 v10, v16

    move/from16 v20, v11

    move v11, v13

    move/from16 v67, v6

    move-object/from16 v6, v66

    move/from16 v12, v17

    move-object/from16 v68, v5

    move v5, v13

    move/from16 v13, v18

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget-object v8, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move/from16 v13, p17

    const/4 v9, 0x0

    invoke-virtual {v8, v14, v2, v13, v9}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    move-object/from16 v11, v16

    move/from16 v65, v20

    goto :goto_13

    :cond_25
    move-object/from16 v68, v5

    move/from16 v17, v6

    move-object v6, v12

    move v5, v13

    move/from16 v13, p17

    goto :goto_12

    :cond_26
    move/from16 v13, p17

    move-object/from16 v68, v5

    move/from16 v17, v6

    move-object v6, v12

    move/from16 v5, v63

    :goto_12
    move-object v14, v10

    move/from16 v67, v17

    :goto_13
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SUPPORT_APPLOCK:Z

    if-eqz v1, :cond_2d

    invoke-virtual {v14}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v4, 0x100000

    and-int/2addr v1, v4

    if-eqz v1, :cond_27

    const/4 v1, 0x1

    goto :goto_14

    :cond_27
    const/4 v1, 0x0

    :goto_14
    iget-object v4, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    if-eqz v3, :cond_2d

    iget-object v8, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v8, :cond_2d

    iget-object v8, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2d

    iget-object v8, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityManagerService;->isAppLockedPackage(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2d

    iget-object v8, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityManagerService;->isAppLockedVerifying(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2d

    if-nez v1, :cond_2d

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v8

    if-nez v8, :cond_28

    if-eqz v4, :cond_29

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v8

    if-eqz v8, :cond_29

    :cond_28
    invoke-static {v5}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v8

    if-eqz v8, :cond_2d

    invoke-static {}, Lcom/android/internal/app/AppLockPolicy;->isSupportSSecure()Z

    move-result v8

    if-nez v8, :cond_2d

    :cond_29
    iget-object v8, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v9, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v8, v9, v14}, Lcom/android/internal/app/AppLockPolicy;->skipLockWhenStart(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v12

    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AppLocked pkgName:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " className:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " skipLockWhenStart:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v12, :cond_2d

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    move-object v10, v8

    invoke-virtual {v14}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v10, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v8, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const/16 v17, 0x2

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v69, v0

    const/4 v9, 0x1

    new-array v0, v9, [Landroid/content/Intent;

    move/from16 v70, v12

    const/4 v12, 0x0

    aput-object v14, v0, v12

    move/from16 v71, v1

    new-array v1, v9, [Ljava/lang/String;

    aput-object v11, v1, v12

    const/high16 v26, 0x50000000

    const/16 v27, 0x0

    move-object/from16 v16, v8

    move-object/from16 v18, v6

    move/from16 v19, v65

    move/from16 v20, v5

    move-object/from16 v24, v0

    move-object/from16 v25, v1

    invoke-virtual/range {v16 .. v27}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v0

    invoke-virtual {v14}, Landroid/content/Intent;->getFlags()I

    move-result v1

    iget-object v8, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityManagerService;->getAppLockedCheckAction()Ljava/lang/String;

    move-result-object v9

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v16, 0x800000

    or-int v16, v1, v16

    const/high16 v17, 0x8000000

    or-int v12, v16, v17

    invoke-virtual {v8, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v12, "android.intent.extra.PACKAGE_NAME"

    move/from16 v72, v1

    iget-object v1, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v12, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.INTENT"

    new-instance v12, Landroid/content/IntentSender;

    invoke-direct {v12, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    invoke-virtual {v8, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz v51, :cond_2a

    const-string v1, "android.intent.extra.RESULT_NEEDED"

    const/4 v12, 0x1

    invoke-virtual {v8, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_15

    :cond_2a
    const/4 v12, 0x1

    :goto_15
    const-string v1, "LOCKED_PACKAGE_INTENT"

    invoke-virtual {v8, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "LOCKED_PACKAGE_NAME"

    iget-object v12, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "LOCKED_PACKAGE_USERID"

    invoke-virtual {v8, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x0

    move/from16 v12, p16

    move/from16 v67, p15

    invoke-static {v5}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v11

    if-eqz v11, :cond_2b

    iget-object v11, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v73, v0

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v0, v0, Lcom/android/server/am/ActivityStarter$Request;->filterCallingUid:I

    move-object/from16 v74, v4

    move/from16 v4, p16

    invoke-static {v12, v4, v0}, Lcom/android/server/am/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v21

    move-object/from16 v16, v11

    move-object/from16 v17, v8

    move-object/from16 v18, v1

    invoke-virtual/range {v16 .. v21}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    move-object/from16 v75, v1

    move-object/from16 v76, v3

    move-object v1, v8

    move-object/from16 v18, v10

    move/from16 v20, v12

    move v3, v13

    move/from16 v19, v70

    const/16 v21, 0x1

    move-object v8, v0

    move-object v0, v9

    goto :goto_16

    :cond_2b
    move-object/from16 v73, v0

    move-object/from16 v74, v4

    move/from16 v4, p16

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/16 v16, 0x0

    iget-object v11, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v11, v11, Lcom/android/server/am/ActivityStarter$Request;->filterCallingUid:I

    invoke-static {v12, v4, v11}, Lcom/android/server/am/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v17

    move-object v11, v8

    move-object v8, v0

    move-object v0, v9

    move-object v9, v11

    move-object/from16 v18, v10

    move-object v10, v1

    move-object/from16 v75, v1

    move-object v1, v11

    move v11, v5

    move-object/from16 v76, v3

    move/from16 v20, v12

    move/from16 v19, v70

    const/4 v3, 0x0

    const/16 v21, 0x1

    move/from16 v12, v16

    move v3, v13

    move/from16 v13, v17

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    :goto_16
    iget-object v9, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v12, 0x0

    invoke-virtual {v9, v1, v8, v3, v12}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v9

    if-eqz v9, :cond_2c

    iget-object v10, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v11, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v14, v1

    move-object v2, v8

    move-object v10, v9

    move-object v0, v2

    move-object/from16 v76, v10

    goto :goto_17

    :cond_2c
    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "AppLock can not resolve Activity , should never happen. Check Action "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    move-object v1, v14

    goto :goto_17

    :cond_2d
    move/from16 v4, p16

    move/from16 v69, v0

    move-object/from16 v76, v3

    move v3, v13

    const/4 v12, 0x0

    const/16 v21, 0x1

    move-object v0, v2

    move-object/from16 v75, v11

    move-object v1, v14

    move/from16 v20, v65

    :goto_17
    if-eqz v0, :cond_2e

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    if-eqz v2, :cond_2e

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    move-object v8, v15

    move-object/from16 v10, p3

    move-object v11, v6

    move-object/from16 v13, v75

    move/from16 v2, v21

    move v14, v5

    move-object v2, v12

    move-object/from16 v23, v32

    move-object/from16 v12, v52

    invoke-direct/range {v8 .. v14}, Lcom/android/server/am/ActivityStarter;->createLaunchIntent(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const/4 v8, 0x0

    move v9, v4

    move/from16 v10, p15

    iget-object v11, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v11, v1, v0, v3, v2}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    move-object v13, v1

    move-object v14, v2

    move-object/from16 v75, v8

    move v11, v9

    move/from16 v67, v10

    goto :goto_18

    :cond_2e
    move-object/from16 v23, v32

    move-object/from16 v12, v52

    move-object v13, v1

    move/from16 v11, v20

    move-object/from16 v14, v76

    :goto_18
    new-instance v1, Lcom/android/server/am/ActivityRecord;

    iget-object v2, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v40

    if-eqz p7, :cond_2f

    const/16 v45, 0x1

    goto :goto_19

    :cond_2f
    const/16 v45, 0x0

    :goto_19
    iget-object v8, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v31, v1

    move-object/from16 v32, v2

    move-object/from16 v33, v23

    move/from16 v34, v67

    move/from16 v35, v11

    move-object/from16 v36, v6

    move-object/from16 v37, v13

    move-object/from16 v38, v75

    move-object/from16 v39, v14

    move-object/from16 v41, v51

    move-object/from16 v42, v50

    move/from16 v43, v61

    move/from16 v44, p20

    move-object/from16 v46, v8

    move-object/from16 v47, v7

    move-object/from16 v48, v62

    invoke-direct/range {v31 .. v48}, Lcom/android/server/am/ActivityRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;IILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/am/ActivityStackSupervisor;Landroid/app/ActivityOptions;Lcom/android/server/am/ActivityRecord;)V

    move-object v10, v1

    if-eqz p21, :cond_30

    const/4 v1, 0x0

    aput-object v10, p21, v1

    :cond_30
    iget-object v1, v10, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-nez v1, :cond_31

    move-object/from16 v9, v62

    if-eqz v9, :cond_32

    iget-object v1, v9, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    iput-object v1, v10, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    goto :goto_1a

    :cond_31
    move-object/from16 v9, v62

    :cond_32
    :goto_1a
    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    if-eqz v1, :cond_38

    const/4 v1, 0x0

    iget v2, v10, Lcom/android/server/am/ActivityRecord;->vrActivityType:I

    const/4 v8, 0x1

    and-int/2addr v2, v8

    if-eqz v2, :cond_34

    iget-object v2, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    iget-object v8, v10, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v77, v0

    iget-object v0, v10, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    move/from16 v78, v1

    iget-object v1, v10, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget v3, v10, Lcom/android/server/am/ActivityRecord;->userId:I

    iget v4, v10, Lcom/android/server/am/ActivityRecord;->vrActivityType:I

    move-object/from16 v16, v2

    move-object/from16 v17, v8

    move-object/from16 v18, v0

    move-object/from16 v19, v1

    move/from16 v20, v3

    move/from16 v21, v4

    invoke-virtual/range {v16 .. v21}, Lcom/samsung/android/vr/GearVrManagerInternal;->readyForVrMode(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/content/Intent;II)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GearVR not ready: not allowed to start VR Activity. activity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_1b

    :cond_33
    move/from16 v1, v78

    :goto_1b
    goto :goto_1c

    :cond_34
    move-object/from16 v77, v0

    move/from16 v78, v1

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    iget-object v1, v10, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v2, v10, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    iget-object v3, v10, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget v4, v10, Lcom/android/server/am/ActivityRecord;->userId:I

    iget v8, v10, Lcom/android/server/am/ActivityRecord;->vrActivityType:I

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v8

    invoke-virtual/range {v16 .. v21}, Lcom/samsung/android/vr/GearVrManagerInternal;->isStartActivityAllowed(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/content/Intent;II)Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mSamsungActivityManager:Lcom/android/server/am/SamsungActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/SamsungActivityManagerService;->inVSMode()Z

    move-result v1

    if-nez v1, :cond_35

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GearVR docked: not allowed to start non-VR Activity. activity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_1c

    :cond_35
    move/from16 v1, v78

    :goto_1c
    if-eqz v1, :cond_37

    if-eqz v51, :cond_36

    const/16 v17, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v54

    move-object/from16 v18, v51

    move-object/from16 v19, v50

    move/from16 v20, v61

    invoke-virtual/range {v16 .. v22}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    :cond_36
    invoke-static {v7}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    const/4 v3, 0x0

    return v3

    :cond_37
    const/4 v3, 0x0

    goto :goto_1d

    :cond_38
    move-object/from16 v77, v0

    const/4 v3, 0x0

    const-string v0, "ActivityManager"

    const-string v1, "GearVrManagerInternal not ready."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1d
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    if-eqz v0, :cond_39

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    if-eqz v0, :cond_39

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v0, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v0, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "activity"

    const/4 v8, 0x0

    const/4 v4, 0x1

    move-object/from16 v3, p1

    move/from16 v4, v67

    move/from16 v24, v5

    move-object/from16 v79, v68

    move v5, v11

    move-object/from16 v25, v6

    move-object v6, v0

    move-object v0, v7

    move-object v7, v8

    move/from16 v8, v24

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/MARsPolicyManager;->isRestrictedPackage(Landroid/content/ComponentName;Landroid/app/IApplicationThread;IILjava/lang/String;Landroid/content/Intent;I)Z

    move-result v1

    if-eqz v1, :cond_3a

    const/16 v1, -0xc8

    return v1

    :cond_39
    move/from16 v24, v5

    move-object/from16 v25, v6

    move-object v0, v7

    move-object/from16 v79, v68

    :cond_3a
    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAMBooster:Lcom/android/server/am/ActivityManagerPerformance;

    if-eqz v1, :cond_3b

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAMBooster:Lcom/android/server/am/ActivityManagerPerformance;

    invoke-virtual {v1, v10}, Lcom/android/server/am/ActivityManagerPerformance;->onActivityStartLocked(Lcom/android/server/am/ActivityRecord;)V

    :cond_3b
    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v1, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-nez p7, :cond_3e

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->getResumedActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_3d

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->getResumedActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v7, p16

    if-eq v1, v7, :cond_3c

    goto :goto_1e

    :cond_3c
    move-object/from16 v80, v8

    move-object/from16 v8, v79

    goto :goto_1f

    :cond_3d
    move/from16 v7, p16

    :goto_1e
    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v6, "Activity start"

    move/from16 v2, v67

    move v3, v11

    move/from16 v4, p15

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerService;->checkAppSwitchAllowedLocked(IIIILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3e

    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mController:Lcom/android/server/am/ActivityStartController;

    new-instance v5, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    move-object v1, v5

    move-object v2, v10

    move-object v3, v9

    move/from16 v4, p17

    move-object v7, v5

    move-object v5, v8

    move-object/from16 v80, v8

    move-object v8, v6

    move-object/from16 v6, v23

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;-><init>(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/ActivityStack;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v8, v7}, Lcom/android/server/am/ActivityStartController;->addPendingActivityLaunch(Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;)V

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    const/16 v16, 0x5

    const/16 v17, 0x5

    const/16 v18, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v19

    const-string v20, "ActivityStarter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, v79

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move/from16 v22, v24

    invoke-static/range {v16 .. v22}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    const/16 v1, 0x64

    return v1

    :cond_3e
    move-object/from16 v80, v8

    move-object/from16 v8, v79

    :goto_1f
    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mDidAppSwitch:Z

    if-eqz v1, :cond_3f

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/android/server/am/ActivityManagerService;->mAppSwitchesAllowedTime:J

    goto :goto_20

    :cond_3f
    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/am/ActivityManagerService;->mDidAppSwitch:Z

    :goto_20
    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mController:Lcom/android/server/am/ActivityStartController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStartController;->doPendingActivityLaunches(Z)V

    const/4 v7, 0x1

    move-object v1, v15

    move-object v2, v10

    move-object v3, v9

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move/from16 v6, p17

    move-object/from16 v17, v8

    move-object/from16 v16, v80

    move-object v8, v0

    move-object/from16 v18, v9

    move-object/from16 v9, v53

    move-object/from16 v19, v10

    move-object/from16 v10, p21

    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/ActivityStarter;->startActivity(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;[Lcom/android/server/am/ActivityRecord;)I

    move-result v1

    return v1
.end method

.method private startActivity(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;[Lcom/android/server/am/ActivityRecord;)I
    .locals 11

    move-object v1, p0

    const/16 v0, -0x60

    move v2, v0

    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    invoke-direct/range {p0 .. p9}, Lcom/android/server/am/ActivityStarter;->startActivityUnchecked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;[Lcom/android/server/am/ActivityRecord;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, v1, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    invoke-static {v0}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    iget-object v4, v1, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "startActivity"

    const/4 v8, 0x1

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    :cond_0
    iget-object v3, v1, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    nop

    iget-object v2, v1, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    move-object v3, p1

    invoke-virtual {v1, v3, v0, v2}, Lcom/android/server/am/ActivityStarter;->postStartActivityProcessing(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/ActivityStack;)V

    return v0

    :catchall_0
    move-exception v0

    move-object v3, p1

    iget-object v4, v1, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    invoke-static {v2}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v4, :cond_1

    iget-object v6, v1, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x1

    const-string/jumbo v9, "startActivity"

    move-object v5, v4

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    :cond_1
    iget-object v5, v1, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method private startActivityMayWait(Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/app/WaitResult;Landroid/content/res/Configuration;Lcom/android/server/am/SafeActivityOptions;ZILcom/android/server/am/TaskRecord;Ljava/lang/String;Z)I
    .locals 51

    move-object/from16 v15, p0

    move-object/from16 v1, p1

    move-object/from16 v14, p3

    move-object/from16 v0, p4

    move-object/from16 v13, p13

    move-object/from16 v12, p14

    move-object/from16 v11, p15

    move/from16 v3, p17

    if-eqz v0, :cond_1

    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "File descriptors passed in Intent"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    iget-object v2, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/am/ActivityMetricsLogger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityMetricsLogger;->notifyActivityLaunching()V

    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v28

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    const/4 v7, -0x1

    if-ltz p2, :cond_3

    const/4 v5, -0x1

    move/from16 v6, p2

    goto :goto_2

    :cond_3
    if-nez v1, :cond_4

    move/from16 v5, v28

    move v4, v8

    move v6, v4

    goto :goto_2

    :cond_4
    move v4, v7

    move v6, v4

    move v5, v7

    :goto_2
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 v0, 0x0

    if-eqz v2, :cond_6

    const-string v9, "android.intent.action.VIEW"

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    if-eqz v9, :cond_6

    :cond_5
    const-string v9, "android.intent.action.INSTALL_INSTANT_APP_PACKAGE"

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string v9, "android.intent.action.RESOLVE_INSTANT_APP_PACKAGE"

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    iget-object v9, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v9

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManagerInternal;->isInstantAppInstallerComponent(Landroid/content/ComponentName;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v2, 0x0

    :cond_6
    iget-object v9, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v10, 0x0

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v0, v0, Lcom/android/server/am/ActivityStarter$Request;->filterCallingUid:I

    invoke-static {v6, v8, v0}, Lcom/android/server/am/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v0

    move/from16 v32, v5

    move-object v5, v9

    move v9, v6

    move-object v6, v7

    move-object/from16 v33, v7

    move-object/from16 v7, p5

    move-object/from16 v35, v4

    move v4, v8

    move v8, v3

    move/from16 v36, v2

    move v2, v9

    const/4 v13, 0x0

    move v9, v10

    move v10, v0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v16

    if-nez v16, :cond_8

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v10

    if-eqz v10, :cond_8

    invoke-virtual {v10}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v9

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    move-wide v7, v6

    :try_start_0
    invoke-virtual {v9, v3}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_7

    :try_start_1
    iget v6, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v6}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v9, v3}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v6, :cond_7

    const/4 v6, 0x1

    goto :goto_3

    :catchall_0
    move-exception v0

    move-wide v13, v7

    move-object/from16 v19, v9

    move-object/from16 v17, v10

    goto :goto_4

    :cond_7
    move v6, v13

    :goto_3
    move v0, v6

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    if-eqz v0, :cond_8

    iget-object v5, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/high16 v17, 0xc0000

    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v6, v6, Lcom/android/server/am/ActivityStarter$Request;->filterCallingUid:I

    invoke-static {v2, v4, v6}, Lcom/android/server/am/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v18

    move-object/from16 v6, v33

    move-wide v13, v7

    move-object/from16 v7, p5

    move v8, v3

    move-object/from16 v19, v9

    move/from16 v9, v17

    move-object/from16 v17, v10

    move/from16 v10, v18

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v16

    goto :goto_5

    :catchall_1
    move-exception v0

    move-wide v13, v7

    move-object/from16 v19, v9

    move-object/from16 v17, v10

    :goto_4
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_8
    :goto_5
    move-object/from16 v13, v16

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move/from16 v14, p11

    move-object/from16 v10, p12

    move-object/from16 v5, v33

    invoke-virtual {v0, v5, v13, v14, v10}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    move-object v6, v0

    if-eqz v11, :cond_9

    :try_start_2
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v11, v0}, Lcom/android/server/am/SafeActivityOptions;->getOptions(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    move/from16 v41, v4

    move-object/from16 v40, v13

    goto/16 :goto_8

    :cond_9
    const/4 v0, 0x0

    :goto_6
    move-object v8, v0

    if-eqz v8, :cond_a

    :try_start_3
    invoke-virtual {v8}, Landroid/app/ActivityOptions;->isActiveApplaunch()Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz v6, :cond_a

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/ActivityOptions;->setActiveApplaunch(Z)V

    iget-object v9, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    move-wide/from16 v37, v16

    const-string v7, "ActivityManager"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-object/from16 v39, v8

    :try_start_5
    const-string v8, "TouchDown intent received, starting ActiveLaunch"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v10, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v19, 0x0

    const-string v21, "activelaunch"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object/from16 v40, v13

    :try_start_6
    new-instance v13, Landroid/content/ComponentName;

    iget-object v14, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move/from16 v41, v4

    :try_start_7
    iget-object v4, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v13, v14, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    const/16 v27, 0x0

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v18, v10

    move/from16 v20, v0

    move-object/from16 v22, v13

    invoke-virtual/range {v16 .. v27}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILjava/lang/String;Landroid/content/ComponentName;ZZZZZ)Lcom/android/server/am/ProcessRecord;

    move-wide/from16 v7, v37

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :try_start_8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    const/4 v4, 0x0

    return v4

    :catchall_2
    move-exception v0

    move/from16 v41, v4

    goto :goto_7

    :catchall_3
    move-exception v0

    move/from16 v41, v4

    move-object/from16 v40, v13

    goto :goto_7

    :catchall_4
    move-exception v0

    move/from16 v41, v4

    move-object/from16 v39, v8

    move-object/from16 v40, v13

    :goto_7
    :try_start_9
    monitor-exit v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :try_start_a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    :catch_1
    move-exception v0

    goto :goto_8

    :catchall_5
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    move/from16 v41, v4

    move-object/from16 v40, v13

    :goto_8
    const-string v4, "ActivityManager"

    const-string v7, "ActiveLaunching Fail"

    invoke-static {v4, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v4, -0x60

    return v4

    :cond_a
    move/from16 v41, v4

    move-object/from16 v40, v13

    if-eqz v11, :cond_b

    :try_start_b
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v11, v0}, Lcom/android/server/am/SafeActivityOptions;->getOptions(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v0

    goto :goto_9

    :catch_3
    move-exception v0

    goto :goto_b

    :cond_b
    const/4 v0, 0x0

    :goto_9
    move-object v4, v0

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->isMlLaunch()Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz v6, :cond_c

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/app/ActivityOptions;->setMlLaunch(Z)V

    iget-object v7, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    :try_start_c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    const-string v10, "ActivityManager"

    const-string v13, "MachinLearning intent received, starting MlLaunch"

    invoke-static {v10, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v14, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v19, 0x0

    const-string/jumbo v21, "mllaunch"
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    move-object/from16 v42, v4

    :try_start_d
    new-instance v4, Landroid/content/ComponentName;

    iget-object v11, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v11, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x1

    move-object/from16 v16, v10

    move-object/from16 v17, v13

    move-object/from16 v18, v14

    move/from16 v20, v0

    move-object/from16 v22, v4

    invoke-virtual/range {v16 .. v27}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILjava/lang/String;Landroid/content/ComponentName;ZZZZZ)Lcom/android/server/am/ProcessRecord;

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v7
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    :try_start_e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    const/4 v1, 0x0

    return v1

    :catchall_6
    move-exception v0

    move-object/from16 v42, v4

    :goto_a
    :try_start_f
    monitor-exit v7
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    :try_start_10
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3

    :catchall_7
    move-exception v0

    goto :goto_a

    :goto_b
    nop

    const-string v1, "ActivityManager"

    const-string v4, "MachinLearning Launching Fail"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v1, -0x60

    return v1

    :cond_c
    nop

    if-eqz v6, :cond_11

    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v2, v1, :cond_d

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    goto :goto_c

    :cond_d
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    :goto_c
    if-eq v1, v0, :cond_10

    if-nez v1, :cond_e

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v4

    if-nez v4, :cond_f

    :cond_e
    if-nez v0, :cond_10

    invoke-static {v1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v4

    if-eqz v4, :cond_10

    :cond_f
    invoke-static {v5, v1}, Lcom/android/server/DualAppManagerService;->changeUriForDualApp(Landroid/content/Intent;I)V

    :cond_10
    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppProfileId()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-static {v1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v4

    if-nez v4, :cond_11

    iget-object v4, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v14, p3

    invoke-static {v4, v5, v1, v3, v14}, Lcom/android/server/DualAppManagerService;->recordDaUsageCount(Landroid/content/Context;Landroid/content/Intent;IILjava/lang/String;)V

    goto :goto_d

    :cond_11
    move-object/from16 v14, p3

    :goto_d
    const-string v0, "android.intent.action.DELETE"

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_f

    :cond_12
    :goto_e
    move-object v1, v6

    goto :goto_10

    :cond_13
    :goto_f
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, v6, v5, v3, v14}, Lcom/android/server/DualAppManagerService;->changeInfoIfDeletingDualApp(Landroid/content/Context;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;ILjava/lang/String;)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    goto :goto_e

    :goto_10
    iget-object v4, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_11
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1b

    move-object v13, v0

    if-eqz v12, :cond_14

    :try_start_12
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_12

    :catchall_8
    move-exception v0

    move-object/from16 v29, p5

    move/from16 v43, v2

    move-object v8, v12

    move-object v6, v15

    move/from16 v2, v36

    move-object/from16 v13, v40

    move/from16 v34, v41

    move-object/from16 v7, p1

    :goto_11
    move-object/from16 v10, p13

    move-object/from16 v50, v35

    move-object/from16 v35, v4

    move-object/from16 v4, v50

    goto/16 :goto_22

    :cond_14
    const/4 v0, 0x0

    :goto_12
    :try_start_13
    iput-boolean v0, v13, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1b

    move-wide v10, v6

    const/4 v9, 0x2

    if-eqz v1, :cond_1d

    :try_start_14
    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/2addr v0, v9

    if-eqz v0, :cond_1d

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mHasHeavyWeightFeature:Z

    if-eqz v0, :cond_1d

    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v6, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_1d

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_15

    if-ne v6, v7, :cond_16

    :try_start_15
    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    if-nez v6, :cond_15

    goto :goto_13

    :cond_15
    move/from16 v43, v2

    move-wide/from16 v47, v10

    move/from16 v9, v32

    move/from16 v14, v41

    move-object/from16 v7, p1

    const/16 v22, 0x0

    goto/16 :goto_1a

    :cond_16
    :goto_13
    move v6, v2

    move-object/from16 v7, p1

    if-eqz v7, :cond_18

    :try_start_16
    iget-object v8, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8, v7}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v8
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_c

    if-eqz v8, :cond_17

    :try_start_17
    iget-object v9, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    move v6, v9

    move/from16 v43, v2

    move/from16 v44, v6

    move/from16 v45, v32

    goto/16 :goto_14

    :catchall_9
    move-exception v0

    move-object/from16 v29, p5

    move/from16 v43, v2

    move-object v8, v12

    move-object v6, v15

    move/from16 v2, v36

    move-object/from16 v13, v40

    move/from16 v34, v41

    goto :goto_11

    :cond_17
    :try_start_18
    const-string v9, "ActivityManager"
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_c

    move/from16 v43, v2

    :try_start_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v44, v6

    const-string v6, "Unable to find app for caller "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " (pid="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_b

    move/from16 v6, v32

    :try_start_1a
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_a

    move/from16 v45, v6

    :try_start_1b
    const-string v6, ") when starting: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p15 .. p15}, Lcom/android/server/am/SafeActivityOptions;->abort(Lcom/android/server/am/SafeActivityOptions;)V

    const/16 v2, -0x5e

    monitor-exit v4
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :catchall_a
    move-exception v0

    move/from16 v45, v6

    move-object/from16 v29, p5

    move-object v8, v12

    move-object v6, v15

    move/from16 v2, v36

    move-object/from16 v13, v40

    move/from16 v34, v41

    move/from16 v32, v45

    move-object/from16 v10, p13

    move-object/from16 v50, v35

    move-object/from16 v35, v4

    move-object/from16 v4, v50

    goto/16 :goto_22

    :catchall_b
    move-exception v0

    move/from16 v45, v32

    move-object/from16 v29, p5

    move-object v8, v12

    move-object v6, v15

    move/from16 v2, v36

    move-object/from16 v13, v40

    move/from16 v34, v41

    move-object/from16 v10, p13

    move-object/from16 v50, v35

    move-object/from16 v35, v4

    move-object/from16 v4, v50

    goto/16 :goto_22

    :catchall_c
    move-exception v0

    move/from16 v43, v2

    move/from16 v45, v32

    move-object/from16 v29, p5

    move-object v8, v12

    move-object v6, v15

    move/from16 v2, v36

    move-object/from16 v13, v40

    move/from16 v34, v41

    move-object/from16 v10, p13

    move-object/from16 v50, v35

    move-object/from16 v35, v4

    move-object/from16 v4, v50

    goto/16 :goto_22

    :cond_18
    move/from16 v43, v2

    move/from16 v44, v6

    move/from16 v45, v32

    :goto_14
    :try_start_1c
    iget-object v2, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const/16 v17, 0x2

    const-string v18, "android"

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/4 v9, 0x1

    new-array v6, v9, [Landroid/content/Intent;

    const/4 v8, 0x0

    aput-object v5, v6, v8

    new-array v8, v9, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object p5, v8, v16

    const/high16 v26, 0x50000000

    const/16 v27, 0x0

    move-object/from16 v16, v2

    move/from16 v19, v44

    move/from16 v20, v3

    move-object/from16 v24, v6

    move-object/from16 v25, v8

    invoke-virtual/range {v16 .. v27}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v2

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_14

    move-object v8, v6

    if-ltz p10, :cond_19

    :try_start_1d
    const-string/jumbo v6, "has_result"

    invoke-virtual {v8, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_d

    goto :goto_15

    :catchall_d
    move-exception v0

    move-object/from16 v29, p5

    move-object v8, v12

    move-object v6, v15

    move/from16 v2, v36

    move-object/from16 v13, v40

    move/from16 v34, v41

    move/from16 v32, v45

    goto/16 :goto_11

    :cond_19
    :goto_15
    :try_start_1e
    const-string/jumbo v6, "intent"

    new-instance v9, Landroid/content/IntentSender;

    invoke-direct {v9, v2}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    invoke-virtual {v8, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_14

    if-lez v6, :cond_1a

    :try_start_1f
    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityRecord;

    const-string v9, "cur_app"

    move-object/from16 v46, v0

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "cur_task"

    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v9

    iget v9, v9, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v8, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_d

    goto :goto_16

    :cond_1a
    move-object/from16 v46, v0

    :goto_16
    :try_start_20
    const-string/jumbo v0, "new_app"

    iget-object v6, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "android"

    const-class v6, Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v0, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_14

    move/from16 v9, v45

    move-object v6, v8

    const/16 v16, 0x0

    const/16 v17, 0x0

    :try_start_21
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_13

    move v7, v0

    :try_start_22
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_12

    move/from16 v18, v0

    const/16 v19, 0x1

    :try_start_23
    iget-object v5, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v0, 0x0

    iget-object v9, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v9, v9, Lcom/android/server/am/ActivityStarter$Request;->filterCallingUid:I
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_11

    move/from16 v14, v41

    :try_start_24
    invoke-static {v7, v14, v9}, Lcom/android/server/am/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v20
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_10

    move/from16 v21, v7

    move-object v7, v0

    move-object v0, v8

    move v8, v3

    const/4 v9, 0x0

    const/16 v22, 0x0

    move-wide/from16 v47, v10

    move/from16 v10, v20

    :try_start_25
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v5
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_f

    if-eqz v5, :cond_1b

    :try_start_26
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_17

    :catchall_e
    move-exception v0

    move-object v13, v5

    move-object v5, v6

    move-object v8, v12

    move/from16 v34, v14

    move-object v6, v15

    move-object/from16 v29, v16

    move-object/from16 v7, v17

    move/from16 v32, v18

    move/from16 v2, v19

    move/from16 v43, v21

    goto/16 :goto_11

    :cond_1b
    const/4 v7, 0x0

    :goto_17
    move-object v1, v7

    if-eqz v1, :cond_1c

    iget-object v7, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7, v1, v3}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_e

    move-object v0, v7

    move-object/from16 v31, v0

    goto :goto_18

    :cond_1c
    move-object/from16 v31, v1

    :goto_18
    move-object/from16 v40, v5

    move-object/from16 v29, v6

    move-object/from16 v30, v16

    move-object/from16 v27, v17

    move/from16 v32, v18

    move/from16 v36, v19

    move/from16 v43, v21

    goto/16 :goto_1b

    :catchall_f
    move-exception v0

    move-object v5, v6

    move-object v8, v12

    move/from16 v34, v14

    move-object v6, v15

    move-object/from16 v29, v16

    move-object/from16 v7, v17

    move/from16 v32, v18

    move/from16 v2, v19

    move/from16 v43, v21

    move-object/from16 v13, v40

    goto/16 :goto_11

    :catchall_10
    move-exception v0

    move/from16 v21, v7

    move-object v5, v6

    move-object v8, v12

    move/from16 v34, v14

    move-object v6, v15

    move-object/from16 v29, v16

    move-object/from16 v7, v17

    move/from16 v32, v18

    move/from16 v2, v19

    move/from16 v43, v21

    move-object/from16 v13, v40

    move-object/from16 v10, p13

    move-object/from16 v50, v35

    move-object/from16 v35, v4

    move-object/from16 v4, v50

    goto/16 :goto_22

    :catchall_11
    move-exception v0

    move/from16 v21, v7

    move-object v5, v6

    move-object v8, v12

    move-object v6, v15

    move-object/from16 v29, v16

    move-object/from16 v7, v17

    move/from16 v32, v18

    move/from16 v2, v19

    move/from16 v43, v21

    goto :goto_19

    :catchall_12
    move-exception v0

    move/from16 v21, v7

    move-object v5, v6

    move/from16 v32, v9

    move-object v8, v12

    move-object v6, v15

    move-object/from16 v29, v16

    move-object/from16 v7, v17

    move/from16 v43, v21

    move/from16 v2, v36

    :goto_19
    move-object/from16 v13, v40

    move/from16 v34, v41

    move-object/from16 v10, p13

    move-object/from16 v50, v35

    move-object/from16 v35, v4

    move-object/from16 v4, v50

    goto/16 :goto_22

    :catchall_13
    move-exception v0

    move-object v5, v6

    move/from16 v32, v9

    move-object v8, v12

    move-object v6, v15

    move-object/from16 v29, v16

    move-object/from16 v7, v17

    move/from16 v2, v36

    move-object/from16 v13, v40

    move/from16 v34, v41

    move-object/from16 v10, p13

    move-object/from16 v50, v35

    move-object/from16 v35, v4

    move-object/from16 v4, v50

    goto/16 :goto_22

    :catchall_14
    move-exception v0

    move/from16 v9, v45

    move-object/from16 v29, p5

    move/from16 v32, v9

    move-object v8, v12

    move-object v6, v15

    move/from16 v2, v36

    move-object/from16 v13, v40

    move/from16 v34, v41

    move-object/from16 v10, p13

    move-object/from16 v50, v35

    move-object/from16 v35, v4

    move-object/from16 v4, v50

    goto/16 :goto_22

    :catchall_15
    move-exception v0

    move/from16 v43, v2

    move/from16 v9, v32

    move-object/from16 v7, p1

    move-object/from16 v29, p5

    move-object v8, v12

    move-object v6, v15

    move/from16 v2, v36

    move-object/from16 v13, v40

    move/from16 v34, v41

    move-object/from16 v10, p13

    move-object/from16 v50, v35

    move-object/from16 v35, v4

    move-object/from16 v4, v50

    goto/16 :goto_22

    :cond_1d
    move/from16 v43, v2

    move-wide/from16 v47, v10

    move/from16 v9, v32

    move/from16 v14, v41

    move-object/from16 v7, p1

    const/16 v22, 0x0

    :goto_1a
    move-object/from16 v30, p5

    move-object/from16 v31, v1

    move-object/from16 v29, v5

    move-object/from16 v27, v7

    move/from16 v32, v9

    :goto_1b
    const/4 v0, 0x1

    :try_start_27
    new-array v0, v0, [Lcom/android/server/am/ActivityRecord;
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_1a

    move-object/from16 v33, v0

    move-object v1, v15

    move-object/from16 v2, v27

    move-object/from16 v3, v29

    move-object/from16 v5, v30

    move-object/from16 v6, v31

    move-object/from16 v7, v40

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v49, v13

    move/from16 v13, v32

    move/from16 v34, v14

    move/from16 v14, v43

    move-object/from16 v15, p3

    move/from16 v16, v28

    move/from16 v17, v34

    move/from16 v18, p11

    move-object/from16 v19, p15

    move/from16 v20, p16

    move/from16 v21, v36

    move-object/from16 v22, v33

    move-object/from16 v23, p18

    move-object/from16 v24, p19

    move/from16 v25, p20

    move-object/from16 v50, v35

    move-object/from16 v35, v4

    move-object/from16 v4, v50

    :try_start_28
    invoke-direct/range {v1 .. v25}, Lcom/android/server/am/ActivityStarter;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILcom/android/server/am/SafeActivityOptions;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Ljava/lang/String;Z)I

    move-result v0

    move v1, v0

    move-wide/from16 v2, v47

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object/from16 v5, v49

    iget-boolean v0, v5, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_19

    if-eqz v0, :cond_1e

    move-object/from16 v6, p0

    :try_start_29
    iget-object v0, v6, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v7, "android.permission.CHANGE_CONFIGURATION"

    const-string/jumbo v8, "updateConfiguration()"

    invoke-virtual {v0, v7, v8}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    iput-boolean v7, v5, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    iget-object v0, v6, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_17

    move-object/from16 v8, p14

    const/4 v9, 0x0

    :try_start_2a
    invoke-virtual {v0, v8, v9, v7}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Z)Z
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_16

    goto :goto_1d

    :catchall_16
    move-exception v0

    goto :goto_1c

    :catchall_17
    move-exception v0

    move-object/from16 v8, p14

    :goto_1c
    move-object/from16 v7, v27

    move-object/from16 v5, v29

    move-object/from16 v29, v30

    move-object/from16 v1, v31

    move/from16 v2, v36

    move-object/from16 v13, v40

    move-object/from16 v10, p13

    goto/16 :goto_22

    :cond_1e
    move-object/from16 v6, p0

    const/4 v7, 0x0

    move-object/from16 v8, p14

    :goto_1d
    move-object/from16 v10, p13

    if-eqz v10, :cond_24

    :try_start_2b
    iput v1, v10, Landroid/app/WaitResult;->result:I

    aget-object v0, v33, v7

    move-object v9, v0

    if-eqz v1, :cond_21

    const-wide/16 v11, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_20

    :pswitch_0
    iput-boolean v7, v10, Landroid/app/WaitResult;->timeout:Z

    iget-object v0, v9, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iput-object v0, v10, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    iput-wide v11, v10, Landroid/app/WaitResult;->totalTime:J

    iput-wide v11, v10, Landroid/app/WaitResult;->thisTime:J

    goto :goto_20

    :pswitch_1
    iget-boolean v0, v9, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v9, v0}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iput-boolean v7, v10, Landroid/app/WaitResult;->timeout:Z

    iget-object v0, v9, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iput-object v0, v10, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    iput-wide v11, v10, Landroid/app/WaitResult;->totalTime:J

    iput-wide v11, v10, Landroid/app/WaitResult;->thisTime:J

    goto :goto_20

    :cond_1f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    iput-wide v11, v10, Landroid/app/WaitResult;->thisTime:J

    iget-object v0, v6, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v11, v10}, Lcom/android/server/am/ActivityStackSupervisor;->waitActivityVisible(Landroid/content/ComponentName;Landroid/app/WaitResult;)V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_18

    :cond_20
    :try_start_2c
    iget-object v0, v6, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2c
    .catch Ljava/lang/InterruptedException; {:try_start_2c .. :try_end_2c} :catch_4
    .catchall {:try_start_2c .. :try_end_2c} :catchall_18

    goto :goto_1e

    :catch_4
    move-exception v0

    :goto_1e
    :try_start_2d
    iget-boolean v0, v10, Landroid/app/WaitResult;->timeout:Z

    if-nez v0, :cond_24

    iget-object v0, v10, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    if-eqz v0, :cond_20

    goto :goto_20

    :cond_21
    iget-object v0, v6, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_18

    :cond_22
    :try_start_2e
    iget-object v0, v6, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2e
    .catch Ljava/lang/InterruptedException; {:try_start_2e .. :try_end_2e} :catch_5
    .catchall {:try_start_2e .. :try_end_2e} :catchall_18

    goto :goto_1f

    :catch_5
    move-exception v0

    :goto_1f
    :try_start_2f
    iget v0, v10, Landroid/app/WaitResult;->result:I

    const/4 v11, 0x2

    if-eq v0, v11, :cond_23

    iget-boolean v0, v10, Landroid/app/WaitResult;->timeout:Z

    if-nez v0, :cond_23

    iget-object v0, v10, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    if-eqz v0, :cond_22

    :cond_23
    iget v0, v10, Landroid/app/WaitResult;->result:I

    if-ne v0, v11, :cond_24

    const/4 v1, 0x2

    goto :goto_20

    :catchall_18
    move-exception v0

    goto :goto_21

    :cond_24
    :goto_20
    iget-object v0, v6, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/am/ActivityMetricsLogger;

    move-result-object v0

    aget-object v7, v33, v7

    invoke-virtual {v0, v1, v7}, Lcom/android/server/am/ActivityMetricsLogger;->notifyActivityLaunched(ILcom/android/server/am/ActivityRecord;)V

    monitor-exit v35
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :catchall_19
    move-exception v0

    move-object/from16 v6, p0

    move-object/from16 v8, p14

    move-object/from16 v10, p13

    :goto_21
    move-object/from16 v7, v27

    move-object/from16 v5, v29

    move-object/from16 v29, v30

    move-object/from16 v1, v31

    move/from16 v2, v36

    move-object/from16 v13, v40

    goto :goto_22

    :catchall_1a
    move-exception v0

    move-object v8, v12

    move/from16 v34, v14

    move-object v6, v15

    move-object/from16 v10, p13

    move-object/from16 v50, v35

    move-object/from16 v35, v4

    move-object/from16 v4, v50

    move-object/from16 v7, v27

    move-object/from16 v5, v29

    move-object/from16 v29, v30

    move-object/from16 v1, v31

    move/from16 v2, v36

    move-object/from16 v13, v40

    goto :goto_22

    :catchall_1b
    move-exception v0

    move/from16 v43, v2

    move-object v8, v12

    move-object v6, v15

    move/from16 v9, v32

    move/from16 v34, v41

    move-object/from16 v7, p1

    move-object/from16 v10, p13

    move-object/from16 v50, v35

    move-object/from16 v35, v4

    move-object/from16 v4, v50

    move-object/from16 v29, p5

    move/from16 v2, v36

    move-object/from16 v13, v40

    :goto_22
    :try_start_30
    monitor-exit v35
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_1c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_1c
    move-exception v0

    goto :goto_22

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private startActivityUnchecked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;[Lcom/android/server/am/ActivityRecord;)I
    .locals 28

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p9

    move-object v0, v9

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move/from16 v4, p6

    move/from16 v5, p5

    move-object v6, v10

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/ActivityStarter;->setInitialState(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;ZILcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->computeLaunchingTaskFlags()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->computeSourceStack()V

    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget v1, v9, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->getReusableIntentActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, v9, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v2, :cond_0

    iget-object v2, v9, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v0

    iget-object v2, v9, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v1

    :cond_0
    iget-object v2, v9, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-virtual {v2}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v9, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-virtual {v2}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->hasPreferredDisplay()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v9, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget v1, v2, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    :cond_1
    iget-object v2, v9, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-virtual {v2}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->hasWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v9, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget v0, v2, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mWindowingMode:I

    :cond_2
    move v12, v0

    move v13, v1

    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiDisplayManager:Lcom/android/server/am/MultiDisplayManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiDisplayManagerService;->getDexModeLocked()I

    move-result v0

    const/4 v14, 0x2

    const/4 v7, 0x1

    if-eq v0, v7, :cond_4

    if-ne v0, v14, :cond_3

    iget v1, v9, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    if-ne v1, v14, :cond_3

    goto :goto_0

    :cond_3
    move-object/from16 v6, p1

    goto/16 :goto_2

    :cond_4
    :goto_0
    const/4 v1, 0x0

    iget-object v2, v9, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMultiDisplayManager:Lcom/android/server/am/MultiDisplayManagerService;

    move-object/from16 v6, p1

    iget-object v3, v6, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, v3}, Lcom/android/server/am/MultiDisplayManagerService;->checkDexLaunchPolicyLocked(Landroid/content/pm/ActivityInfo;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isActivityTypeHome()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v10, :cond_5

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->inFreeformWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    iget v4, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStack;->moveTaskToBackLocked(I)Z

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start launcher is not allowed on desktop mode. source="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v10, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :cond_5
    if-eqz v1, :cond_8

    iget-object v2, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_6

    iget-object v2, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v15

    goto :goto_1

    :cond_6
    const/4 v15, 0x0

    :goto_1
    move-object v2, v15

    if-eqz v2, :cond_7

    const/16 v17, -0x1

    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    iget-object v5, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v5, v5, Lcom/android/server/am/ActivityRecord;->requestCode:I

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move/from16 v20, v5

    invoke-virtual/range {v16 .. v22}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    :cond_7
    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    const/16 v3, 0x66

    return v3

    :cond_8
    :goto_2
    if-eqz v8, :cond_9

    invoke-virtual {v8}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    move-object v1, v0

    goto :goto_3

    :cond_9
    const/4 v1, 0x0

    :goto_3
    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mDexInterceptor:Lcom/android/server/am/MultiDisplayManagerService$ActivityStartInterceptor;

    iget v5, v9, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    iget v4, v9, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    move-object v2, v6

    move-object/from16 v16, v3

    move-object v3, v10

    move/from16 v17, v4

    move/from16 v4, p5

    move/from16 v6, v17

    move v15, v7

    move-object/from16 v7, v16

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/MultiDisplayManagerService$ActivityStartInterceptor;->intercept(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;IIILandroid/app/ActivityOptions;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    const/16 v0, 0x64

    return v0

    :cond_a
    if-eqz v8, :cond_b

    invoke-virtual {v8}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-nez v0, :cond_b

    const/4 v8, 0x0

    :cond_b
    const/4 v0, 0x3

    const/4 v7, 0x0

    if-eqz v8, :cond_1d

    iget-object v1, v9, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v1

    invoke-virtual {v8}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    iget v3, v9, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const v4, 0x10008000

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_c

    move v3, v15

    goto :goto_4

    :cond_c
    move v3, v7

    :goto_4
    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;Z)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v0, "ActivityManager"

    const-string/jumbo v1, "startActivityUnchecked: Attempt to violate Lock Task Mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x65

    return v0

    :cond_d
    iget v1, v9, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x4200000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_e

    iget v1, v9, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    if-nez v1, :cond_e

    move v1, v15

    goto :goto_5

    :cond_e
    move v1, v7

    :goto_5
    iget-object v2, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    if-nez v2, :cond_f

    if-nez v1, :cond_f

    iget-object v2, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;)V

    :cond_f
    invoke-virtual {v8}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v2, :cond_10

    invoke-virtual {v8}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2, v3}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    :cond_10
    iget v2, v9, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v3, 0x4000000

    and-int/2addr v2, v3

    if-nez v2, :cond_11

    iget v2, v9, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    invoke-static {v2}, Lcom/android/server/am/ActivityStarter;->isDocumentLaunchesIntoExisting(I)Z

    move-result v2

    if-nez v2, :cond_11

    invoke-direct {v9, v0, v14}, Lcom/android/server/am/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_11
    invoke-virtual {v8}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v4, v9, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/TaskRecord;->performClearTaskForReuseLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    invoke-virtual {v8}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    if-nez v4, :cond_12

    invoke-virtual {v8, v2}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;)V

    :cond_12
    if-eqz v3, :cond_14

    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v4, :cond_13

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    iget-object v5, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v4, v5}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    :cond_13
    invoke-direct {v9, v3}, Lcom/android/server/am/ActivityStarter;->deliverNewIntent(Lcom/android/server/am/ActivityRecord;)V

    :cond_14
    iget-object v2, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, v7, v8}, Lcom/android/server/am/ActivityStackSupervisor;->sendPowerHintForLaunchStartIfNeeded(ZLcom/android/server/am/ActivityRecord;)V

    invoke-direct {v9, v8}, Lcom/android/server/am/ActivityStarter;->setTargetStackAndMoveToFrontIfNeeded(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    if-eqz v11, :cond_15

    array-length v2, v11

    if-lez v2, :cond_15

    aget-object v2, v11, v7

    goto :goto_6

    :cond_15
    const/4 v2, 0x0

    :goto_6
    if-eqz v2, :cond_17

    iget-boolean v3, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v3, :cond_16

    iget-boolean v3, v2, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-eqz v3, :cond_17

    :cond_16
    aput-object v8, v11, v7

    :cond_17
    iget v3, v9, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    and-int/2addr v3, v15

    if-eqz v3, :cond_18

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->resumeTargetStackIfNeeded()V

    return v15

    :cond_18
    if-eqz v8, :cond_1d

    invoke-direct {v9, v8}, Lcom/android/server/am/ActivityStarter;->setTaskFromIntentActivity(Lcom/android/server/am/ActivityRecord;)V

    iget-boolean v3, v9, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    if-nez v3, :cond_1d

    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    if-nez v3, :cond_1d

    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->isPairWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_19

    iget-object v3, v8, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v4, v9, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getPairWindowingMode()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPairWindowingMode(I)V

    invoke-virtual {v8}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    iput-boolean v15, v3, Lcom/android/server/am/TaskRecord;->isLaunchedPairApp:Z

    :cond_19
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->resumeTargetStackIfNeeded()V

    if-eqz v11, :cond_1a

    array-length v3, v11

    if-lez v3, :cond_1a

    aput-object v8, v11, v7

    :cond_1a
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_USAGE_LOGGING:Z

    if-eqz v3, :cond_1b

    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_1b

    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    if-eqz v3, :cond_1b

    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_1b

    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    const-string v4, "Home"

    iget-object v5, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/MultiWindowManagerService;->logSplitWindowComplete(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    iget-boolean v3, v9, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    if-eqz v3, :cond_1c

    goto :goto_7

    :cond_1c
    move v14, v0

    :goto_7
    return v14

    :cond_1d
    iget-object v1, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    if-nez v1, :cond_20

    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_1e

    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v15

    move-object/from16 v23, v15

    goto :goto_8

    :cond_1e
    const/16 v23, 0x0

    :goto_8
    move-object/from16 v7, v23

    if-eqz v7, :cond_1f

    const/4 v1, -0x1

    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    :cond_1f
    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    const/16 v0, -0x5c

    return v0

    :cond_20
    iget-object v1, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_22

    iget-object v4, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v4, :cond_22

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v5, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    iget v4, v3, Lcom/android/server/am/ActivityRecord;->userId:I

    iget-object v5, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v5, v5, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v4, v5, :cond_22

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_22

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_22

    iget v4, v9, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v5, 0x20000000

    and-int/2addr v4, v5

    if-nez v4, :cond_21

    invoke-direct {v9, v15, v14}, Lcom/android/server/am/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v4

    if-eqz v4, :cond_22

    :cond_21
    move v4, v15

    goto :goto_9

    :cond_22
    move v4, v7

    :goto_9
    if-eqz v4, :cond_25

    const/4 v5, 0x0

    iput-object v5, v1, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v5, v9, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v5, :cond_23

    iget-object v5, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    :cond_23
    iget-object v5, v9, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v5}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    iget v5, v9, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    and-int/2addr v5, v15

    if-eqz v5, :cond_24

    return v15

    :cond_24
    invoke-direct {v9, v3}, Lcom/android/server/am/ActivityStarter;->deliverNewIntent(Lcom/android/server/am/ActivityRecord;)V

    iget-object v5, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    invoke-virtual {v5, v6, v12, v13, v1}, Lcom/android/server/am/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;IILcom/android/server/am/ActivityStack;)V

    return v0

    :cond_25
    const/4 v0, 0x0

    iget-boolean v5, v9, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    if-eqz v5, :cond_26

    iget-object v5, v9, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_26

    iget-object v5, v9, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    goto :goto_a

    :cond_26
    const/4 v5, 0x0

    :goto_a
    const/4 v6, 0x0

    iget-object v15, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v15, v15, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v15, :cond_27

    iget-object v15, v9, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    if-nez v15, :cond_27

    iget-boolean v15, v9, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    if-nez v15, :cond_27

    iget v15, v9, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v16, 0x10000000

    and-int v15, v15, v16

    if-eqz v15, :cond_27

    const/4 v0, 0x1

    invoke-direct {v9, v5, v1}, Lcom/android/server/am/ActivityStarter;->setTaskFromReuseOrCreateNewTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;)I

    move-result v6

    goto :goto_b

    :cond_27
    iget-object v15, v9, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v15, :cond_28

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->setTaskFromSourceRecord()I

    move-result v6

    goto :goto_b

    :cond_28
    iget-object v15, v9, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    if-eqz v15, :cond_29

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->setTaskFromInTask()I

    move-result v6

    goto :goto_b

    :cond_29
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->setTaskToCurrentTopOrCreateNewTask()V

    :goto_b
    if-eqz v6, :cond_2a

    return v6

    :cond_2a
    iget-object v15, v9, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v7, v9, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    iget-object v14, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v14, v14, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v24, v1

    iget-object v1, v9, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    move-object/from16 v25, v3

    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v19

    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v3, v3, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v16, v7

    move-object/from16 v17, v14

    move-object/from16 v18, v1

    move/from16 v20, v3

    invoke-virtual/range {v15 .. v20}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;I)V

    iget-object v1, v9, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v3, v3, Lcom/android/server/am/ActivityRecord;->userId:I

    iget-object v7, v9, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v14, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v14, v14, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v15, v9, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    invoke-static {v15}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v15

    invoke-virtual {v1, v3, v7, v14, v15}, Lcom/android/server/am/ActivityManagerService;->grantEphemeralAccessLocked(ILandroid/content/Intent;II)V

    if-eqz v0, :cond_2b

    const/16 v1, 0x7534

    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/Object;

    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v3, v3, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v14, 0x0

    aput-object v3, v7, v14

    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v14, 0x1

    aput-object v3, v7, v14

    invoke-static {v1, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_2b
    const/16 v1, 0x7535

    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v7, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    invoke-static {v1, v3, v7}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    iget-object v1, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v7, 0x0

    invoke-virtual {v1, v7, v3}, Lcom/android/server/am/ActivityStackSupervisor;->sendPowerHintForLaunchStartIfNeeded(ZLcom/android/server/am/ActivityRecord;)V

    iget-object v1, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v7, v9, Lcom/android/server/am/ActivityStarter;->mKeepCurTransition:Z

    iget-object v14, v9, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    move-object/from16 v16, v1

    move-object/from16 v17, v3

    move-object/from16 v18, v2

    move/from16 v19, v0

    move/from16 v20, v7

    move-object/from16 v21, v14

    invoke-virtual/range {v16 .. v21}, Lcom/android/server/am/ActivityStack;->startActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZZLandroid/app/ActivityOptions;)V

    iget-boolean v1, v9, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v1, :cond_2f

    iget-object v1, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isFocusable()Z

    move-result v3

    if-eqz v3, :cond_2e

    if-eqz v1, :cond_2c

    iget-boolean v3, v1, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    if-eqz v3, :cond_2c

    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    if-eq v3, v1, :cond_2c

    goto :goto_c

    :cond_2c
    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isFocusable()Z

    move-result v3

    if-eqz v3, :cond_2d

    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v7, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3, v7}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v3

    if-nez v3, :cond_2d

    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const-string/jumbo v7, "startActivityUnchecked"

    invoke-virtual {v3, v7}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    :cond_2d
    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v7, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v14, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v15, v9, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3, v7, v14, v15}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    goto :goto_d

    :cond_2e
    :goto_c
    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const/4 v7, 0x0

    const/4 v14, 0x0

    invoke-virtual {v3, v14, v7, v7}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    :goto_d
    goto :goto_e

    :cond_2f
    iget-object v1, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_30

    iget-object v1, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/am/RecentTasks;->add(Lcom/android/server/am/TaskRecord;)V

    :cond_30
    :goto_e
    iget-object v1, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v3, v3, Lcom/android/server/am/ActivityRecord;->userId:I

    iget-object v7, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, v3, v7}, Lcom/android/server/am/ActivityStackSupervisor;->updateUserStackLocked(ILcom/android/server/am/ActivityStack;)V

    iget-object v1, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    iget-object v7, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, v3, v12, v13, v7}, Lcom/android/server/am/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;IILcom/android/server/am/ActivityStack;)V

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_USAGE_LOGGING:Z

    if-eqz v1, :cond_31

    iget-object v1, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v1, v9, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_31

    iget-object v1, v9, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v1, v9, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    const-string v3, "Home"

    iget-object v7, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v7, v7, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3, v7}, Lcom/android/server/am/MultiWindowManagerService;->logSplitWindowComplete(Ljava/lang/String;Ljava/lang/String;)V

    :cond_31
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_USAGE_LOGGING:Z

    if-eqz v1, :cond_33

    if-eqz v0, :cond_33

    iget-object v1, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isDexMode()Z

    move-result v1

    if-nez v1, :cond_33

    iget-object v1, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_33

    iget v1, v9, Lcom/android/server/am/ActivityStarter;->mForceFreeformMode:I

    if-nez v1, :cond_32

    iget-object v1, v9, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v1, :cond_33

    iget-object v1, v9, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_33

    iget-object v1, v9, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_33

    :cond_32
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->logFreeformBehavior()V

    :cond_33
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MD_DEX_USAGE_LOGGING:Z

    if-eqz v1, :cond_35

    iget-object v1, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isDexMode()Z

    move-result v1

    if-eqz v1, :cond_35

    iget-object v1, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    iget-object v3, v1, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    const-string v14, ""

    if-eqz v7, :cond_34

    iget-object v15, v7, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz v15, :cond_34

    iget-object v14, v7, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    :cond_34
    iget-object v15, v9, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v15, :cond_35

    iget-object v15, v9, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v15}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v15

    if-eqz v15, :cond_35

    iget-object v15, v9, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v15}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v15

    invoke-virtual {v15}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_35

    const-string v15, "DMBY"

    move-object/from16 v26, v1

    const-string v1, "DMPA"

    filled-new-array {v15, v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v3, v15, v16

    const/16 v16, 0x1

    aput-object v14, v15, v16

    move-object/from16 v27, v2

    iget-object v2, v9, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v15}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->insertLogForDeX(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_f

    :cond_35
    move-object/from16 v27, v2

    :goto_f
    if-eqz v10, :cond_36

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/ActivityRecord;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_36

    const/4 v1, 0x1

    goto :goto_10

    :cond_36
    const/4 v1, 0x0

    :goto_10
    iget-object v2, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getWindowingMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_37

    const/4 v2, 0x1

    goto :goto_11

    :cond_37
    const/4 v2, 0x0

    :goto_11
    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->isResizeable()Z

    move-result v3

    const/4 v7, 0x1

    xor-int/2addr v3, v7

    if-eqz v1, :cond_38

    if-eqz v0, :cond_38

    if-eqz v2, :cond_38

    if-eqz v3, :cond_38

    iget-object v7, v9, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v14, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v7, v14}, Lcom/android/server/am/MultiWindowManagerService;->showNotSupportMultiWindowToast(Lcom/android/server/am/ActivityRecord;)V

    :cond_38
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCurrentUser="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLastStartReason="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLastStartActivityTimeMs="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/server/am/ActivityStarter;->mLastStartActivityTimeMs:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLastStartActivityResult="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLastStartActivityResult:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/am/ActivityRecord;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mLastStartActivityRecord:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/android/server/am/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_1

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mStartActivity:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/android/server/am/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mIntent="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v2, :cond_3

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mOptions="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mLaunchSingleTop="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    const/4 v3, 0x1

    if-ne v3, v2, :cond_4

    move v2, v3

    goto :goto_0

    :cond_4
    move v2, v1

    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " mLaunchSingleInstance="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v2, 0x3

    iget v4, p0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    if-ne v2, v4, :cond_5

    move v2, v3

    goto :goto_1

    :cond_5
    move v2, v1

    :goto_1
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " mLaunchSingleTask="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v2, 0x2

    iget v4, p0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    if-ne v2, v4, :cond_6

    move v1, v3

    nop

    :cond_6
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mLaunchFlags=0x"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " mDoResume="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mAddingToTask="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method execute()I
    .locals 42

    move-object/from16 v15, p0

    :try_start_0
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/am/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/am/ActivityStarter$Request;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v14, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    if-eqz v1, :cond_1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    if-eqz v1, :cond_1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mMARsPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iget-object v2, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v2, v2, Lcom/android/server/am/ActivityStarter$Request;->userId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v14, v2, v3}, Lcom/android/server/am/MARsPolicyManager;->cancelDisablePolicy(Ljava/lang/String;II)Z

    :cond_1
    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityStarter$Request;->mayWait:Z

    if-eqz v1, :cond_2

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v2, v1, Lcom/android/server/am/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v3, v1, Lcom/android/server/am/ActivityStarter$Request;->callingUid:I

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v4, v1, Lcom/android/server/am/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v5, v1, Lcom/android/server/am/ActivityStarter$Request;->intent:Landroid/content/Intent;

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v6, v1, Lcom/android/server/am/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v7, v1, Lcom/android/server/am/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v8, v1, Lcom/android/server/am/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v9, v1, Lcom/android/server/am/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v10, v1, Lcom/android/server/am/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v11, v1, Lcom/android/server/am/ActivityStarter$Request;->requestCode:I

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v12, v1, Lcom/android/server/am/ActivityStarter$Request;->startFlags:I

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v13, v1, Lcom/android/server/am/ActivityStarter$Request;->profilerInfo:Landroid/app/ProfilerInfo;

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/am/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    move-object/from16 v26, v0

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/am/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    move-object/from16 v27, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/am/ActivityStarter$Request;->activityOptions:Lcom/android/server/am/SafeActivityOptions;

    move-object/from16 v28, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityStarter$Request;->ignoreTargetSecurity:Z

    move/from16 v29, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v1, v1, Lcom/android/server/am/ActivityStarter$Request;->userId:I

    move/from16 v30, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/am/ActivityStarter$Request;->inTask:Lcom/android/server/am/TaskRecord;

    move-object/from16 v31, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/am/ActivityStarter$Request;->reason:Ljava/lang/String;

    move-object/from16 v32, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    move/from16 v22, v1

    move-object/from16 v16, v27

    move-object/from16 v17, v28

    move/from16 v18, v29

    move/from16 v19, v30

    move-object/from16 v20, v31

    move-object/from16 v21, v32

    move-object v1, v15

    move-object/from16 v27, v14

    move-object/from16 v14, v16

    move-object v15, v0

    move-object/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move/from16 v21, v22

    invoke-direct/range {v1 .. v21}, Lcom/android/server/am/ActivityStarter;->startActivityMayWait(Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/app/WaitResult;Landroid/content/res/Configuration;Lcom/android/server/am/SafeActivityOptions;ZILcom/android/server/am/TaskRecord;Ljava/lang/String;Z)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->onExecutionComplete()V

    return v0

    :cond_2
    move-object/from16 v26, v0

    move-object/from16 v27, v14

    move-object/from16 v15, p0

    :try_start_1
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter$Request;->intent:Landroid/content/Intent;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter$Request;->ephemeralIntent:Landroid/content/Intent;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v6, v0, Lcom/android/server/am/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v7, v0, Lcom/android/server/am/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v8, v0, Lcom/android/server/am/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v9, v0, Lcom/android/server/am/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v10, v0, Lcom/android/server/am/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v11, v0, Lcom/android/server/am/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v12, v0, Lcom/android/server/am/ActivityStarter$Request;->requestCode:I

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v13, v0, Lcom/android/server/am/ActivityStarter$Request;->callingPid:I

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v14, v0, Lcom/android/server/am/ActivityStarter$Request;->callingUid:I

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/am/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v1, v1, Lcom/android/server/am/ActivityStarter$Request;->realCallingPid:I

    move/from16 v33, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v1, v1, Lcom/android/server/am/ActivityStarter$Request;->realCallingUid:I

    move/from16 v34, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v1, v1, Lcom/android/server/am/ActivityStarter$Request;->startFlags:I

    move/from16 v35, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/am/ActivityStarter$Request;->activityOptions:Lcom/android/server/am/SafeActivityOptions;

    move-object/from16 v36, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityStarter$Request;->ignoreTargetSecurity:Z

    move/from16 v37, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityStarter$Request;->componentSpecified:Z

    move/from16 v38, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/am/ActivityStarter$Request;->outActivity:[Lcom/android/server/am/ActivityRecord;

    move-object/from16 v39, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/am/ActivityStarter$Request;->inTask:Lcom/android/server/am/TaskRecord;

    move-object/from16 v40, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/am/ActivityStarter$Request;->reason:Ljava/lang/String;

    move-object/from16 v41, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    move/from16 v25, v1

    move/from16 v16, v33

    move/from16 v17, v34

    move/from16 v18, v35

    move-object/from16 v19, v36

    move/from16 v20, v37

    move/from16 v21, v38

    move-object/from16 v22, v39

    move-object/from16 v23, v40

    move-object/from16 v24, v41

    move-object v1, v15

    move-object v15, v0

    invoke-direct/range {v1 .. v25}, Lcom/android/server/am/ActivityStarter;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILcom/android/server/am/SafeActivityOptions;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Ljava/lang/String;Z)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->onExecutionComplete()V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->onExecutionComplete()V

    throw v0
.end method

.method getIntent()Landroid/content/Intent;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/am/ActivityStarter$Request;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method getStartActivity()Lcom/android/server/am/ActivityRecord;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    return-object v0
.end method

.method postStartActivityProcessing(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/ActivityStack;)V
    .locals 10

    invoke-static {p2}, Landroid/app/ActivityManager;->isStartResultFatalError(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ActivityStackSupervisor;->reportWaitingActivityLaunchedIfNeeded(Lcom/android/server/am/ActivityRecord;I)V

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_2

    move-object v0, p3

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    return-void

    :cond_3
    const v2, 0x10008000

    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const v4, 0x10008000

    and-int/2addr v3, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    if-eqz v3, :cond_4

    move v3, v6

    goto :goto_1

    :cond_4
    move v3, v5

    :goto_1
    const/4 v4, 0x2

    if-eq p2, v4, :cond_5

    const/4 v4, 0x3

    if-eq p2, v4, :cond_5

    if-eqz v3, :cond_8

    :cond_5
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const/4 v4, 0x1

    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/am/ActivityStack;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z

    move-result v9

    if-nez v9, :cond_6

    move v5, v6

    nop

    :cond_6
    move v4, v5

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityStackSupervisor;->mIsDockMinimized:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mDockMinimizedTopActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    if-ne v5, v6, :cond_7

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/MultiWindowManagerService;->notifyAlreadyRunningOnDockedStack()V

    :cond_7
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, v5, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    if-eqz v4, :cond_8

    if-eqz v5, :cond_8

    invoke-virtual {v5, v8}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->showRecentApps()V

    goto :goto_2

    :pswitch_1
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-virtual {v4, v3}, Lcom/android/server/am/TaskChangeNotificationController;->notifyPinnedActivityRestartAttempt(Z)V

    nop

    :cond_8
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method relatedToPackage(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/am/ActivityRecord;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/am/ActivityRecord;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    nop

    :cond_2
    return v1
.end method

.method reset(Z)V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    iput v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    iput v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-virtual {v3}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->reset()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    iput v2, p0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iput v1, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mKeepCurTransition:Z

    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mIntentDelivered:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStarter$Request;->reset()V

    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_USAGE_LOGGING:Z

    if-eqz v0, :cond_1

    iput v2, p0, Lcom/android/server/am/ActivityStarter;->mForceFreeformMode:I

    :cond_1
    return-void
.end method

.method set(Lcom/android/server/am/ActivityStarter;)V
    .locals 2

    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget v0, p1, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-boolean v0, p1, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    iget v0, p1, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    iget v0, p1, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget-object v1, p1, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-virtual {v0, v1}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->set(Lcom/android/server/am/LaunchParamsController$LaunchParams;)V

    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    iget-boolean v0, p1, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    iget v0, p1, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget v0, p1, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iget-boolean v0, p1, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-boolean v0, p1, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    iget-boolean v0, p1, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iget-boolean v0, p1, Lcom/android/server/am/ActivityStarter;->mKeepCurTransition:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mKeepCurTransition:Z

    iget-boolean v0, p1, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iget-boolean v0, p1, Lcom/android/server/am/ActivityStarter;->mIntentDelivered:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mIntentDelivered:Z

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v1, p1, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStarter$Request;->set(Lcom/android/server/am/ActivityStarter$Request;)V

    return-void
.end method

.method setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityStarter;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    return-object p0
.end method

.method setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/am/ActivityStarter;
    .locals 1

    invoke-static {p1}, Lcom/android/server/am/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/am/SafeActivityOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStarter;->setActivityOptions(Lcom/android/server/am/SafeActivityOptions;)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    return-object v0
.end method

.method setActivityOptions(Lcom/android/server/am/SafeActivityOptions;)Lcom/android/server/am/ActivityStarter;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->activityOptions:Lcom/android/server/am/SafeActivityOptions;

    return-object p0
.end method

.method setAllowPendingRemoteAnimationRegistryLookup(Z)Lcom/android/server/am/ActivityStarter;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-boolean p1, v0, Lcom/android/server/am/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    return-object p0
.end method

.method setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/am/ActivityStarter;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    return-object p0
.end method

.method setCallingPackage(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    return-object p0
.end method

.method setCallingPid(I)Lcom/android/server/am/ActivityStarter;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/am/ActivityStarter$Request;->callingPid:I

    return-object p0
.end method

.method setCallingUid(I)Lcom/android/server/am/ActivityStarter;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/am/ActivityStarter$Request;->callingUid:I

    return-object p0
.end method

.method setComponentSpecified(Z)Lcom/android/server/am/ActivityStarter;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-boolean p1, v0, Lcom/android/server/am/ActivityStarter$Request;->componentSpecified:Z

    return-object p0
.end method

.method setEphemeralIntent(Landroid/content/Intent;)Lcom/android/server/am/ActivityStarter;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->ephemeralIntent:Landroid/content/Intent;

    return-object p0
.end method

.method setFilterCallingUid(I)Lcom/android/server/am/ActivityStarter;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/am/ActivityStarter$Request;->filterCallingUid:I

    return-object p0
.end method

.method setGlobalConfiguration(Landroid/content/res/Configuration;)Lcom/android/server/am/ActivityStarter;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    return-object p0
.end method

.method setIgnoreTargetSecurity(Z)Lcom/android/server/am/ActivityStarter;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-boolean p1, v0, Lcom/android/server/am/ActivityStarter$Request;->ignoreTargetSecurity:Z

    return-object p0
.end method

.method setInTask(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/ActivityStarter;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->inTask:Lcom/android/server/am/TaskRecord;

    return-object p0
.end method

.method setIntent(Landroid/content/Intent;)Lcom/android/server/am/ActivityStarter;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->intent:Landroid/content/Intent;

    return-object p0
.end method

.method setMayWait(I)Lcom/android/server/am/ActivityStarter;
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/am/ActivityStarter$Request;->mayWait:Z

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/am/ActivityStarter$Request;->userId:I

    return-object p0
.end method

.method setOutActivity([Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStarter;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->outActivity:[Lcom/android/server/am/ActivityRecord;

    return-object p0
.end method

.method setProfilerInfo(Landroid/app/ProfilerInfo;)Lcom/android/server/am/ActivityStarter;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->profilerInfo:Landroid/app/ProfilerInfo;

    return-object p0
.end method

.method setRealCallingPid(I)Lcom/android/server/am/ActivityStarter;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/am/ActivityStarter$Request;->realCallingPid:I

    return-object p0
.end method

.method setRealCallingUid(I)Lcom/android/server/am/ActivityStarter;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/am/ActivityStarter$Request;->realCallingUid:I

    return-object p0
.end method

.method setReason(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->reason:Ljava/lang/String;

    return-object p0
.end method

.method setRequestCode(I)Lcom/android/server/am/ActivityStarter;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/am/ActivityStarter$Request;->requestCode:I

    return-object p0
.end method

.method setResolveInfo(Landroid/content/pm/ResolveInfo;)Lcom/android/server/am/ActivityStarter;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    return-object p0
.end method

.method setResolvedType(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    return-object p0
.end method

.method setResultTo(Landroid/os/IBinder;)Lcom/android/server/am/ActivityStarter;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    return-object p0
.end method

.method setResultWho(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    return-object p0
.end method

.method setStartFlags(I)Lcom/android/server/am/ActivityStarter;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/am/ActivityStarter$Request;->startFlags:I

    return-object p0
.end method

.method setUserId(I)Lcom/android/server/am/ActivityStarter;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/am/ActivityStarter$Request;->userId:I

    return-object p0
.end method

.method setVoiceInteractor(Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/am/ActivityStarter;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    return-object p0
.end method

.method setVoiceSession(Landroid/service/voice/IVoiceInteractionSession;)Lcom/android/server/am/ActivityStarter;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    return-object p0
.end method

.method setWaitResult(Landroid/app/WaitResult;)Lcom/android/server/am/ActivityStarter;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    return-object p0
.end method

.method startResolvedActivity(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;[Lcom/android/server/am/ActivityRecord;)I
    .locals 1

    :try_start_0
    invoke-direct/range {p0 .. p9}, Lcom/android/server/am/ActivityStarter;->startActivity(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;[Lcom/android/server/am/ActivityRecord;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/server/am/ActivityStarter;->onExecutionComplete()V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/server/am/ActivityStarter;->onExecutionComplete()V

    throw v0
.end method

.method updateBounds(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V
    .locals 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->resizeStackWithLaunchBounds()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v3, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, -0x1

    move-object v4, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityManagerService;->resizeStack(ILandroid/graphics/Rect;ZZZI)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    :goto_0
    return-void
.end method
