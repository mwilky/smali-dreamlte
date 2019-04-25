.class Lcom/android/server/am/TaskRecord;
.super Lcom/android/server/wm/ConfigurationContainer;
.source "TaskRecord.java"

# interfaces
.implements Lcom/android/server/wm/TaskWindowContainerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/TaskRecord$TaskRecordFactory;,
        Lcom/android/server/am/TaskRecord$TaskActivitiesReport;,
        Lcom/android/server/am/TaskRecord$ReparentMoveStackMode;
    }
.end annotation


# static fields
.field private static final ATTR_AFFINITY:Ljava/lang/String; = "affinity"

.field private static final ATTR_ASKEDCOMPATMODE:Ljava/lang/String; = "asked_compat_mode"

.field private static final ATTR_AUTOREMOVERECENTS:Ljava/lang/String; = "auto_remove_recents"

.field private static final ATTR_CALLING_PACKAGE:Ljava/lang/String; = "calling_package"

.field private static final ATTR_CALLING_UID:Ljava/lang/String; = "calling_uid"

.field private static final ATTR_EFFECTIVE_UID:Ljava/lang/String; = "effective_uid"

.field private static final ATTR_LASTDESCRIPTION:Ljava/lang/String; = "last_description"

.field private static final ATTR_LASTTIMEMOVED:Ljava/lang/String; = "last_time_moved"

.field private static final ATTR_MIN_HEIGHT:Ljava/lang/String; = "min_height"

.field private static final ATTR_MIN_WIDTH:Ljava/lang/String; = "min_width"

.field private static final ATTR_NEVERRELINQUISH:Ljava/lang/String; = "never_relinquish_identity"

.field private static final ATTR_NEXT_AFFILIATION:Ljava/lang/String; = "next_affiliation"

.field private static final ATTR_NON_FULLSCREEN_BOUNDS:Ljava/lang/String; = "non_fullscreen_bounds"

.field private static final ATTR_ORIGACTIVITY:Ljava/lang/String; = "orig_activity"

.field private static final ATTR_PERSIST_TASK_VERSION:Ljava/lang/String; = "persist_task_version"

.field private static final ATTR_PREV_AFFILIATION:Ljava/lang/String; = "prev_affiliation"

.field private static final ATTR_REALACTIVITY:Ljava/lang/String; = "real_activity"

.field private static final ATTR_REALACTIVITY_SUSPENDED:Ljava/lang/String; = "real_activity_suspended"

.field private static final ATTR_RESIZE_MODE:Ljava/lang/String; = "resize_mode"

.field private static final ATTR_ROOTHASRESET:Ljava/lang/String; = "root_has_reset"

.field private static final ATTR_ROOT_AFFINITY:Ljava/lang/String; = "root_affinity"

.field private static final ATTR_SUPPORTS_PICTURE_IN_PICTURE:Ljava/lang/String; = "supports_picture_in_picture"

.field private static final ATTR_TASKID:Ljava/lang/String; = "task_id"

.field private static final ATTR_TASKTYPE:Ljava/lang/String; = "task_type"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ATTR_TASK_AFFILIATION:Ljava/lang/String; = "task_affiliation"

.field private static final ATTR_TASK_AFFILIATION_COLOR:Ljava/lang/String; = "task_affiliation_color"

.field private static final ATTR_USERID:Ljava/lang/String; = "user_id"

.field private static final ATTR_USER_SETUP_COMPLETE:Ljava/lang/String; = "user_setup_complete"

.field static final INVALID_MAX_SIZE:I = -0x1

.field private static final INVALID_MIN_SIZE:I = -0x1

.field static final INVALID_TASK_ID:I = -0x1

.field static final LOCK_TASK_AUTH_DONT_LOCK:I = 0x0

.field static final LOCK_TASK_AUTH_LAUNCHABLE:I = 0x2

.field static final LOCK_TASK_AUTH_LAUNCHABLE_PRIV:I = 0x4

.field static final LOCK_TASK_AUTH_PINNABLE:I = 0x1

.field static final LOCK_TASK_AUTH_WHITELISTED:I = 0x3

.field private static final PERSIST_TASK_VERSION:I = 0x1

.field static final REPARENT_KEEP_STACK_AT_FRONT:I = 0x1

.field static final REPARENT_LEAVE_STACK_IN_PLACE:I = 0x2

.field static final REPARENT_MOVE_STACK_TO_FRONT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final TAG_ADD_REMOVE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_AFFINITYINTENT:Ljava/lang/String; = "affinity_intent"

.field private static final TAG_INTENT:Ljava/lang/String; = "intent"

.field private static final TAG_LOCKTASK:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_RECENTS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_TASKS:Ljava/lang/String; = "ActivityManager"

.field private static sTaskRecordFactory:Lcom/android/server/am/TaskRecord$TaskRecordFactory;


# instance fields
.field affinity:Ljava/lang/String;

.field affinityIntent:Landroid/content/Intent;

.field askedCompatMode:Z

.field autoRemoveRecents:Z

.field effectiveUid:I

.field hasBeenVisible:Z

.field inRecents:Z

.field intent:Landroid/content/Intent;

.field isAvailable:Z

.field isLaunchedPairApp:Z

.field isPersistable:Z

.field lastActiveTime:J

.field lastDescription:Ljava/lang/CharSequence;

.field lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

.field final mActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mAffiliatedTaskColor:I

.field mAffiliatedTaskId:I

.field mCallingPackage:Ljava/lang/String;

.field mCallingUid:I

.field mDexCompatCustomSize:Landroid/graphics/Point;

.field mDexCompatUiMode:I

.field mDexLaunchPolicy:I

.field private mDexMetadataHeightValue:Lcom/samsung/android/multidisplay/MultiDisplayManager$Utils$TypedMetaDataValue;

.field private mDexMetadataWidthValue:Lcom/samsung/android/multidisplay/MultiDisplayManager$Utils$TypedMetaDataValue;

.field mDisplayCompatModeAvailable:Z

.field mFreeformDensityDisabled:Z

.field private mIsDexCompatEnabled:Z

.field private mLastDensityDpi:F

.field mLastDexBounds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field mLastNonFullscreenBounds:Landroid/graphics/Rect;

.field mLastNonFullscreenBoundsDisplayId:I

.field mLastParentDisplayId:I

.field mLastReportedDexCompatEnabled:Z

.field mLastReportedDexCompatUiMode:I

.field private final mLastReportedMaxSize:Landroid/graphics/Point;

.field private final mLastReportedMinSize:Landroid/graphics/Point;

.field mLastTimeMoved:J

.field mLayerRank:I

.field mLockTaskAuth:I

.field mLockTaskUid:I

.field private final mMaxDimensions:Landroid/graphics/Point;

.field mMaxHeight:I

.field mMaxWidth:I

.field private final mMinDimensions:Landroid/graphics/Point;

.field mMinHeight:I

.field mMinWidth:I

.field private mNeverRelinquishIdentity:Z

.field mNextAffiliate:Lcom/android/server/am/TaskRecord;

.field mNextAffiliateTaskId:I

.field mPrevAffiliate:Lcom/android/server/am/TaskRecord;

.field mPrevAffiliateTaskId:I

.field mResizeMode:I

.field private mReuseTask:Z

.field private mRootProcess:Lcom/android/server/am/ProcessRecord;

.field mRunningInDex:Z

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field mSnapTargetFull:Z

.field mSnapWindowTarget:Z

.field private mStack:Lcom/android/server/am/ActivityStack;

.field mSupportScaledDensity:Z

.field private mSupportsPictureInPicture:Z

.field private mTmpConfig:Landroid/content/res/Configuration;

.field private final mTmpNonDecorBounds:Landroid/graphics/Rect;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpStableBounds:Landroid/graphics/Rect;

.field mUserSetupComplete:Z

.field private mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

.field maxRecents:I

.field numFullscreen:I

.field origActivity:Landroid/content/ComponentName;

.field realActivity:Landroid/content/ComponentName;

.field realActivitySuspended:Z

.field rootAffinity:Ljava/lang/String;

.field rootWasReset:Z

.field stringName:Ljava/lang/String;

.field final taskId:I

.field userId:I

.field final voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field final voiceSession:Landroid/service/voice/IVoiceInteractionSession;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;Ljava/util/ArrayList;JZLandroid/app/ActivityManager$TaskDescription;IIIIILjava/lang/String;IZZZII)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityManagerService;",
            "I",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            "ZZZII",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;JZ",
            "Landroid/app/ActivityManager$TaskDescription;",
            "IIIII",
            "Ljava/lang/String;",
            "IZZZII)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ConfigurationContainer;-><init>()V

    const/4 v2, 0x1

    iput v2, v0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    const/4 v3, -0x1

    iput v3, v0, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    new-instance v4, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v4}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    iput-object v4, v0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    iput-boolean v2, v0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    iput-boolean v4, v0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    iput v3, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    iput v3, v0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v0, Lcom/android/server/am/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    iput v3, v0, Lcom/android/server/am/TaskRecord;->mLayerRank:I

    new-instance v6, Landroid/content/res/Configuration;

    invoke-direct {v6}, Landroid/content/res/Configuration;-><init>()V

    iput-object v6, v0, Lcom/android/server/am/TaskRecord;->mTmpConfig:Landroid/content/res/Configuration;

    iput v3, v0, Lcom/android/server/am/TaskRecord;->mMaxWidth:I

    iput v3, v0, Lcom/android/server/am/TaskRecord;->mMaxHeight:I

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v6, v0, Lcom/android/server/am/TaskRecord;->mMinDimensions:Landroid/graphics/Point;

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v6, v0, Lcom/android/server/am/TaskRecord;->mMaxDimensions:Landroid/graphics/Point;

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v6, v0, Lcom/android/server/am/TaskRecord;->mLastReportedMinSize:Landroid/graphics/Point;

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v6, v0, Lcom/android/server/am/TaskRecord;->mLastReportedMaxSize:Landroid/graphics/Point;

    const/4 v6, 0x0

    iput v6, v0, Lcom/android/server/am/TaskRecord;->mLastDensityDpi:F

    iput-boolean v4, v0, Lcom/android/server/am/TaskRecord;->mFreeformDensityDisabled:Z

    iput-boolean v2, v0, Lcom/android/server/am/TaskRecord;->mSupportScaledDensity:Z

    iput-boolean v4, v0, Lcom/android/server/am/TaskRecord;->mSnapWindowTarget:Z

    iput-boolean v4, v0, Lcom/android/server/am/TaskRecord;->mSnapTargetFull:Z

    iput-boolean v4, v0, Lcom/android/server/am/TaskRecord;->isLaunchedPairApp:Z

    iput-boolean v4, v0, Lcom/android/server/am/TaskRecord;->mRunningInDex:Z

    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    iput-object v6, v0, Lcom/android/server/am/TaskRecord;->mLastDexBounds:Landroid/util/SparseArray;

    iput v3, v0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBoundsDisplayId:I

    iput v4, v0, Lcom/android/server/am/TaskRecord;->mDexLaunchPolicy:I

    iput-boolean v4, v0, Lcom/android/server/am/TaskRecord;->mIsDexCompatEnabled:Z

    iput-boolean v4, v0, Lcom/android/server/am/TaskRecord;->mLastReportedDexCompatEnabled:Z

    iput v4, v0, Lcom/android/server/am/TaskRecord;->mDexCompatUiMode:I

    iput v4, v0, Lcom/android/server/am/TaskRecord;->mLastReportedDexCompatUiMode:I

    iput-boolean v4, v0, Lcom/android/server/am/TaskRecord;->mDisplayCompatModeAvailable:Z

    move-object/from16 v3, p1

    iput-object v3, v0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iput v1, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v4, p3

    iput-object v4, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    move-object/from16 v6, p4

    iput-object v6, v0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    move-object/from16 v7, p5

    iput-object v7, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    move-object/from16 v8, p6

    iput-object v8, v0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    iput-object v5, v0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iput-object v5, v0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    move-object/from16 v5, p7

    iput-object v5, v0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    move/from16 v9, p28

    iput-boolean v9, v0, Lcom/android/server/am/TaskRecord;->realActivitySuspended:Z

    move-object/from16 v10, p8

    iput-object v10, v0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    move/from16 v11, p9

    iput-boolean v11, v0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    iput-boolean v2, v0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    move/from16 v2, p10

    iput-boolean v2, v0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    move/from16 v12, p11

    iput-boolean v12, v0, Lcom/android/server/am/TaskRecord;->askedCompatMode:Z

    move/from16 v13, p12

    iput v13, v0, Lcom/android/server/am/TaskRecord;->userId:I

    move/from16 v14, p29

    iput-boolean v14, v0, Lcom/android/server/am/TaskRecord;->mUserSetupComplete:Z

    move/from16 v15, p13

    iput v15, v0, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    move-object/from16 v2, p14

    iput-object v2, v0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    move-object/from16 v3, p15

    iput-object v3, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-wide/from16 v2, p16

    iput-wide v2, v0, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    move/from16 v2, p18

    iput-boolean v2, v0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    move-object/from16 v3, p19

    iput-object v3, v0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    move/from16 v2, p20

    iput v2, v0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    move/from16 v2, p23

    iput v2, v0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    move/from16 v2, p21

    iput v2, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    move/from16 v2, p22

    iput v2, v0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    move/from16 v2, p24

    iput v2, v0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    move-object/from16 v2, p25

    iput-object v2, v0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    move/from16 v2, p26

    iput v2, v0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    move/from16 v2, p27

    iput-boolean v2, v0, Lcom/android/server/am/TaskRecord;->mSupportsPictureInPicture:Z

    move/from16 v2, p30

    iput v2, v0, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    move/from16 v2, p31

    iput v2, v0, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v3, v0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/am/TaskChangeNotificationController;->notifyTaskCreated(ILandroid/content/ComponentName;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;)V
    .locals 5

    invoke-direct {p0}, Lcom/android/server/wm/ConfigurationContainer;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    new-instance v2, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v2}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    iput v1, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    iput v1, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    iput v1, p0, Lcom/android/server/am/TaskRecord;->mLayerRank:I

    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4}, Landroid/content/res/Configuration;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->mTmpConfig:Landroid/content/res/Configuration;

    iput v1, p0, Lcom/android/server/am/TaskRecord;->mMaxWidth:I

    iput v1, p0, Lcom/android/server/am/TaskRecord;->mMaxHeight:I

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->mMinDimensions:Landroid/graphics/Point;

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->mMaxDimensions:Landroid/graphics/Point;

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->mLastReportedMinSize:Landroid/graphics/Point;

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->mLastReportedMaxSize:Landroid/graphics/Point;

    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/am/TaskRecord;->mLastDensityDpi:F

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mFreeformDensityDisabled:Z

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mSupportScaledDensity:Z

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mSnapWindowTarget:Z

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mSnapTargetFull:Z

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->isLaunchedPairApp:Z

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mRunningInDex:Z

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->mLastDexBounds:Landroid/util/SparseArray;

    iput v1, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBoundsDisplayId:I

    iput v2, p0, Lcom/android/server/am/TaskRecord;->mDexLaunchPolicy:I

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mIsDexCompatEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mLastReportedDexCompatEnabled:Z

    iput v2, p0, Lcom/android/server/am/TaskRecord;->mDexCompatUiMode:I

    iput v2, p0, Lcom/android/server/am/TaskRecord;->mLastReportedDexCompatUiMode:I

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mDisplayCompatModeAvailable:Z

    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/TaskRecord;->userId:I

    iput p2, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    iput p2, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iput-object v3, p0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iput-object v3, p0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    iget-object v1, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    iget-object v1, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    invoke-direct {p0, p4, p3}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    invoke-direct {p0, p3}, Lcom/android/server/am/TaskRecord;->setMinDimensions(Landroid/content/pm/ActivityInfo;)V

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    iget v1, p3, Landroid/content/pm/ActivityInfo;->maxRecents:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {}, Landroid/app/ActivityManager;->getMaxAppRecentsLimitStatic()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/TaskRecord;->maxRecents:I

    iput-object p5, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, p2, v1}, Lcom/android/server/am/TaskChangeNotificationController;->notifyTaskCreated(ILandroid/content/ComponentName;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V
    .locals 5

    invoke-direct {p0}, Lcom/android/server/wm/ConfigurationContainer;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    new-instance v2, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v2}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    iput v1, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    iput v1, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    iput v1, p0, Lcom/android/server/am/TaskRecord;->mLayerRank:I

    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/TaskRecord;->mTmpConfig:Landroid/content/res/Configuration;

    iput v1, p0, Lcom/android/server/am/TaskRecord;->mMaxWidth:I

    iput v1, p0, Lcom/android/server/am/TaskRecord;->mMaxHeight:I

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v3, p0, Lcom/android/server/am/TaskRecord;->mMinDimensions:Landroid/graphics/Point;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v3, p0, Lcom/android/server/am/TaskRecord;->mMaxDimensions:Landroid/graphics/Point;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v3, p0, Lcom/android/server/am/TaskRecord;->mLastReportedMinSize:Landroid/graphics/Point;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v3, p0, Lcom/android/server/am/TaskRecord;->mLastReportedMaxSize:Landroid/graphics/Point;

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/am/TaskRecord;->mLastDensityDpi:F

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mFreeformDensityDisabled:Z

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mSupportScaledDensity:Z

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mSnapWindowTarget:Z

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mSnapTargetFull:Z

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->isLaunchedPairApp:Z

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mRunningInDex:Z

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/TaskRecord;->mLastDexBounds:Landroid/util/SparseArray;

    iput v1, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBoundsDisplayId:I

    iput v2, p0, Lcom/android/server/am/TaskRecord;->mDexLaunchPolicy:I

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mIsDexCompatEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mLastReportedDexCompatEnabled:Z

    iput v2, p0, Lcom/android/server/am/TaskRecord;->mDexCompatUiMode:I

    iput v2, p0, Lcom/android/server/am/TaskRecord;->mLastReportedDexCompatUiMode:I

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mDisplayCompatModeAvailable:Z

    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/TaskRecord;->userId:I

    iput p2, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    iput p2, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iput-object p5, p0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iput-object p6, p0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    invoke-direct {p0, p4, p3}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    invoke-direct {p0, p3}, Lcom/android/server/am/TaskRecord;->setMinDimensions(Landroid/content/pm/ActivityInfo;)V

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, p2, v1}, Lcom/android/server/am/TaskChangeNotificationController;->notifyTaskCreated(ILandroid/content/ComponentName;)V

    return-void
.end method

.method private adjustForMaximumTaskDimensions(Landroid/graphics/Rect;)V
    .locals 8

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->inFreeformWindowingMode()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/am/TaskRecord;->mMaxWidth:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, -0x1

    if-eq v3, v6, :cond_2

    iget v3, p0, Lcom/android/server/am/TaskRecord;->mMaxWidth:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-ge v3, v7, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    move v1, v3

    :cond_2
    iget v3, p0, Lcom/android/server/am/TaskRecord;->mMaxHeight:I

    if-eq v3, v6, :cond_4

    iget v3, p0, Lcom/android/server/am/TaskRecord;->mMaxHeight:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-ge v3, v6, :cond_3

    move v4, v5

    nop

    :cond_3
    move v2, v4

    :cond_4
    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    if-ne v3, v4, :cond_5

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/android/server/am/TaskRecord;->mMaxWidth:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_5
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/android/server/am/TaskRecord;->mMaxWidth:I

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->right:I

    :cond_6
    :goto_1
    if-eqz v2, :cond_8

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    if-ne v3, v4, :cond_7

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/android/server/am/TaskRecord;->mMaxHeight:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->top:I

    goto :goto_2

    :cond_7
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/android/server/am/TaskRecord;->mMaxHeight:I

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    :cond_8
    :goto_2
    return-void

    :cond_9
    :goto_3
    return-void
.end method

.method private adjustForMinimalTaskDimensions(Landroid/graphics/Rect;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isDexCompatEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    iget v1, p0, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->inPinnedWindowingMode()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mDefaultMinSizeOfResizeableTask:I

    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    iget v4, v4, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplay(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v3

    if-eqz v3, :cond_2

    iget v2, v3, Lcom/android/server/am/ActivityDisplay;->mDefaultMinSizeOfResizeableTask:I

    :cond_2
    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    move v0, v2

    :cond_3
    if-ne v1, v3, :cond_4

    move v1, v2

    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v0, v2, :cond_5

    move v2, v4

    goto :goto_0

    :cond_5
    move v2, v3

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v1, v5, :cond_6

    move v3, v4

    nop

    :cond_6
    if-nez v2, :cond_7

    if-nez v3, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v4

    if-eqz v2, :cond_9

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    iget v5, p1, Landroid/graphics/Rect;->right:I

    iget v6, v4, Landroid/graphics/Rect;->right:I

    if-ne v5, v6, :cond_8

    iget v5, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v0

    iput v5, p1, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_8
    iget v5, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v0

    iput v5, p1, Landroid/graphics/Rect;->right:I

    :cond_9
    :goto_1
    if-eqz v3, :cond_b

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    if-ne v5, v6, :cond_a

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v1

    iput v5, p1, Landroid/graphics/Rect;->top:I

    goto :goto_2

    :cond_a
    iget v5, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v1

    iput v5, p1, Landroid/graphics/Rect;->bottom:I

    :cond_b
    :goto_2
    return-void
.end method

.method private canResizeToBounds(Landroid/graphics/Rect;)Z
    .locals 6

    const/4 v0, 0x1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isDexCompatEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_5

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/4 v3, 0x0

    if-le v1, v2, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v4, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_5

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v4, v5, :cond_2

    move v4, v0

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    if-ne v1, v4, :cond_3

    goto :goto_2

    :cond_3
    move v0, v3

    goto :goto_3

    :cond_4
    :goto_2
    nop

    :goto_3
    return v0

    :cond_5
    iget v4, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_6

    if-nez v1, :cond_7

    :cond_6
    iget v4, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_8

    if-eqz v1, :cond_7

    goto :goto_4

    :cond_7
    move v0, v3

    nop

    :cond_8
    :goto_4
    return v0

    :cond_9
    :goto_5
    return v0
.end method

.method private closeRecentsChain()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    invoke-virtual {p0, v0}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    return-void
.end method

.method static create(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;)Lcom/android/server/am/TaskRecord;
    .locals 6

    invoke-static {}, Lcom/android/server/am/TaskRecord;->getTaskRecordFactory()Lcom/android/server/am/TaskRecord$TaskRecordFactory;

    move-result-object v0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/TaskRecord$TaskRecordFactory;->create(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    return-object v0
.end method

.method static create(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/am/TaskRecord;
    .locals 7

    invoke-static {}, Lcom/android/server/am/TaskRecord;->getTaskRecordFactory()Lcom/android/server/am/TaskRecord$TaskRecordFactory;

    move-result-object v0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/TaskRecord$TaskRecordFactory;->create(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    return-object v0
.end method

.method static getTaskRecordFactory()Lcom/android/server/am/TaskRecord$TaskRecordFactory;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    sget-object v0, Lcom/android/server/am/TaskRecord;->sTaskRecordFactory:Lcom/android/server/am/TaskRecord$TaskRecordFactory;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/TaskRecord$TaskRecordFactory;

    invoke-direct {v0}, Lcom/android/server/am/TaskRecord$TaskRecordFactory;-><init>()V

    invoke-static {v0}, Lcom/android/server/am/TaskRecord;->setTaskRecordFactory(Lcom/android/server/am/TaskRecord$TaskRecordFactory;)V

    :cond_0
    sget-object v0, Lcom/android/server/am/TaskRecord;->sTaskRecordFactory:Lcom/android/server/am/TaskRecord$TaskRecordFactory;

    return-object v0
.end method

.method private initMinMaxDimensions(Landroid/content/pm/ActivityInfo;)V
    .locals 8

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mMinDimensions:Landroid/graphics/Point;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v1, v1, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mMinDimensions:Landroid/graphics/Point;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v1, v1, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    :cond_0
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->getInitialDisplayDensity(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3bcccccd    # 0.00625f

    mul-float/2addr v1, v0

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.samsung.android.sdk.multiwindow.maxWidth"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.samsung.android.sdk.multiwindow.maxHeight"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v5, 0x0

    cmpl-float v5, v1, v5

    if-lez v5, :cond_2

    const/high16 v5, 0x3f000000    # 0.5f

    if-eq v2, v4, :cond_1

    iget-object v6, p0, Lcom/android/server/am/TaskRecord;->mMaxDimensions:Landroid/graphics/Point;

    int-to-float v7, v2

    mul-float/2addr v7, v1

    add-float/2addr v7, v5

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Point;->x:I

    :cond_1
    if-eq v3, v4, :cond_2

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mMaxDimensions:Landroid/graphics/Point;

    int-to-float v6, v3

    mul-float/2addr v6, v1

    add-float/2addr v6, v5

    float-to-int v5, v6

    iput v5, v4, Landroid/graphics/Point;->y:I

    :cond_2
    return-void
.end method

.method private isResizeable(Z)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isDexCompatEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mSnapWindowTarget:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mForceResizableActivities:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mSupportsPictureInPicture:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    nop

    :cond_2
    return v1
.end method

.method private static replaceWindowsOnTaskMove(II)Z
    .locals 1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    if-ne p1, v0, :cond_0

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

.method static restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/TaskRecord;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-static {}, Lcom/android/server/am/TaskRecord;->getTaskRecordFactory()Lcom/android/server/am/TaskRecord$TaskRecordFactory;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/am/TaskRecord$TaskRecordFactory;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    return-object v0
.end method

.method private setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget v0, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    :goto_1
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    :cond_3
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-nez v3, :cond_7

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_5

    :cond_4
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object p1, v3

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    :cond_5
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    goto :goto_2

    :cond_6
    move-object v3, v0

    :goto_2
    iput-object v3, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    goto :goto_3

    :cond_7
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_8

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    iput-object v3, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    goto :goto_3

    :cond_8
    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    iput-object v3, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    new-instance v0, Landroid/content/ComponentName;

    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    :goto_3
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v0, :cond_9

    move v0, v1

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    :goto_4
    const/high16 v3, 0x200000

    and-int/2addr v3, v0

    if-eqz v3, :cond_a

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    :cond_a
    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/am/TaskRecord;->userId:I

    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "user_setup_complete"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_b

    move v3, v2

    goto :goto_5

    :cond_b
    move v3, v1

    :goto_5
    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->mUserSetupComplete:Z

    iget v3, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v3, v3, 0x2000

    if-eqz v3, :cond_c

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    goto :goto_6

    :cond_c
    const v3, 0x82000

    and-int/2addr v3, v0

    const/high16 v4, 0x80000

    if-ne v3, v4, :cond_e

    iget v3, p2, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    if-eqz v3, :cond_d

    iput-boolean v1, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    goto :goto_6

    :cond_d
    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    goto :goto_6

    :cond_e
    iput-boolean v1, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    :goto_6
    iget v1, p2, Landroid/content/pm/ActivityInfo;->resizeMode:I

    iput v1, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    invoke-virtual {p2}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mSupportsPictureInPicture:Z

    invoke-direct {p0, p2}, Lcom/android/server/am/TaskRecord;->initMinMaxDimensions(Landroid/content/pm/ActivityInfo;)V

    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_f

    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.samsung.android.sdk.multiwindow.freeform.densitychange"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mFreeformDensityDisabled:Z

    :cond_f
    return-void
.end method

.method private setLockTaskAuth(Lcom/android/server/am/ActivityRecord;)V
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v2

    iget v3, p1, Lcom/android/server/am/ActivityRecord;->lockTaskLaunchMode:I

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget v3, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v2, v3, v1}, Lcom/android/server/am/LockTaskController;->isPackageWhitelisted(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x2

    nop

    :cond_2
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    goto :goto_1

    :pswitch_3
    iget v3, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v2, v3, v1}, Lcom/android/server/am/LockTaskController;->isPackageWhitelisted(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v0, 0x3

    nop

    :cond_3
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    nop

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setMinDimensions(Landroid/content/pm/ActivityInfo;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    :goto_0
    return-void
.end method

.method static setTaskRecordFactory(Lcom/android/server/am/TaskRecord$TaskRecordFactory;)V
    .locals 0

    sput-object p0, Lcom/android/server/am/TaskRecord;->sTaskRecordFactory:Lcom/android/server/am/TaskRecord$TaskRecordFactory;

    return-void
.end method


# virtual methods
.method addActivityAtBottom(Lcom/android/server/am/ActivityRecord;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/TaskRecord;->addActivityAtIndex(ILcom/android/server/am/ActivityRecord;)V

    return-void
.end method

.method addActivityAtIndex(ILcom/android/server/am/ActivityRecord;)V
    .locals 4

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not add r= to task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " current parent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    invoke-virtual {p2, p0}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;)V

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    iget-boolean v1, p2, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    :cond_2
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getActivityType()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p2, v2}, Lcom/android/server/am/ActivityRecord;->setActivityType(I)V

    :cond_3
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getActivityType()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/am/TaskRecord;->setActivityType(I)V

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->isPersistable()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    iget v1, p2, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    iput v1, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->maxRecents:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {}, Landroid/app/ActivityManager;->getMaxAppRecentsLimitStatic()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/TaskRecord;->maxRecents:I

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getActivityType()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/server/am/ActivityRecord;->setActivityType(I)V

    :goto_1
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne p1, v1, :cond_5

    if-lez v1, :cond_5

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget-boolean v3, v2, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    if-eqz v3, :cond_5

    add-int/lit8 p1, p1, -0x1

    :cond_5
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->updateEffectiveIntent()V

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->isPersistable()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    :cond_6
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfigurationFromLaunchBounds()Landroid/graphics/Rect;

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getWindowContainerController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    invoke-virtual {v3, v2, p1}, Lcom/android/server/wm/TaskWindowContainerController;->positionChildAt(Lcom/android/server/wm/AppWindowContainerController;I)V

    :cond_7
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->updateUIDsPresentOnDisplay()V

    return-void
.end method

.method addActivityToTop(Lcom/android/server/am/ActivityRecord;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/TaskRecord;->addActivityAtIndex(ILcom/android/server/am/ActivityRecord;)V

    return-void
.end method

.method addStartingWindowsForVisibleActivities(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/am/ActivityRecord;->showStartingWindow(Lcom/android/server/am/ActivityRecord;ZZ)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method autoRemoveFromRecents()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->hasBeenVisible:Z

    if-nez v0, :cond_0

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

.method canBeLaunchedOnDisplay(I)Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/TaskRecord;->isResizeable(Z)Z

    move-result v3

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    move v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityStackSupervisor;->canPlaceEntityOnDisplay(IZIILandroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method cancelWindowTransition()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskWindowContainerController;->cancelWindowTransition()V

    return-void
.end method

.method clearAllPendingOptions()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/server/am/TaskRecord;->getChildAt(I)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method clearRootProcess()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mRootProcess:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mRootProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->recentTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mRootProcess:Lcom/android/server/am/ProcessRecord;

    :cond_0
    return-void
.end method

.method computeNewOverrideConfigurationForBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/content/res/Configuration;
    .locals 8

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1}, Lcom/android/server/am/TaskRecord;->adjustForMinimalTaskDimensions(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1}, Lcom/android/server/am/TaskRecord;->adjustForMaximumTaskDimensions(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v2, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    if-eq v1, v2, :cond_1

    move v7, v5

    goto :goto_1

    :cond_1
    move v7, v4

    :goto_1
    move-object v1, p0

    move-object v2, v0

    move-object v4, p2

    move v5, v6

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/TaskRecord;->computeOverrideConfiguration(Landroid/content/res/Configuration;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    :cond_2
    return-object v0
.end method

.method computeOverrideConfiguration(Landroid/content/res/Configuration;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Configuration;->unset()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/TaskRecord;->getParent()Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget v1, v14, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v1, v1

    const v2, 0x3bcccccd    # 0.00625f

    mul-float/2addr v1, v2

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/TaskRecord;->inFreeformWindowingMode()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/TaskRecord;->updateSupportScaledDensityLocked()V

    iget v4, v14, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v5, v14, Landroid/content/res/Configuration;->densityDpi:I

    invoke-static {v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowManager$Utils;->getScaleDownDensity(II)I

    move-result v4

    if-lez v4, :cond_1

    iget-boolean v5, v0, Lcom/android/server/am/TaskRecord;->mSupportScaledDensity:Z

    if-eqz v5, :cond_1

    int-to-float v5, v4

    mul-float/2addr v5, v2

    iput v4, v12, Landroid/content/res/Configuration;->densityDpi:I

    move v15, v5

    goto :goto_0

    :cond_1
    move v15, v1

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/TaskRecord;->isDexCompatEnabled()Z

    move-result v1

    const/4 v11, 0x1

    const/4 v10, 0x2

    if-eqz v1, :cond_2

    iput v10, v12, Landroid/content/res/Configuration;->dexCompatEnabled:I

    iget v1, v0, Lcom/android/server/am/TaskRecord;->mDexCompatUiMode:I

    iput v1, v12, Landroid/content/res/Configuration;->dexCompatUiMode:I

    goto :goto_1

    :cond_2
    iput v11, v12, Landroid/content/res/Configuration;->dexCompatEnabled:I

    const/4 v1, 0x0

    iput v1, v12, Landroid/content/res/Configuration;->dexCompatUiMode:I

    :goto_1
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getWindowContainerController()Lcom/android/server/wm/StackWindowController;

    move-result-object v16

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/android/server/am/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/TaskRecord;->getWindowingMode()I

    move-result v17

    move-object/from16 v1, v16

    move-object v2, v13

    move-object/from16 v3, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move v8, v15

    move-object v9, v12

    move/from16 v18, v10

    move-object v10, v14

    move/from16 v19, v11

    move/from16 v11, v17

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/wm/StackWindowController;->adjustConfigurationForBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZFLandroid/content/res/Configuration;Landroid/content/res/Configuration;I)V

    nop

    iget v1, v12, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, v12, Landroid/content/res/Configuration;->screenHeightDp:I

    if-gt v1, v2, :cond_3

    nop

    move/from16 v1, v19

    goto :goto_2

    :cond_3
    move/from16 v1, v18

    :goto_2
    iput v1, v12, Landroid/content/res/Configuration;->orientation:I

    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v15

    float-to-int v1, v1

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v15

    float-to-int v2, v2

    const/16 v3, 0x24

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/16 v6, 0x24

    invoke-static {v6, v4, v5}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v6

    iput v6, v12, Landroid/content/res/Configuration;->screenLayout:I

    return-void

    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Expected stack when calculating override config"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method createWindowContainer(ZZ)V
    .locals 13

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfigurationFromLaunchBounds()Landroid/graphics/Rect;

    move-result-object v0

    new-instance v12, Lcom/android/server/wm/TaskWindowContainerController;

    iget v2, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getWindowContainerController()Lcom/android/server/wm/StackWindowController;

    move-result-object v4

    iget v5, p0, Lcom/android/server/am/TaskRecord;->userId:I

    iget v7, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    iget-boolean v8, p0, Lcom/android/server/am/TaskRecord;->mSupportsPictureInPicture:Z

    iget-object v11, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object v1, v12

    move-object v3, p0

    move-object v6, v0

    move v9, p1

    move v10, p2

    invoke-direct/range {v1 .. v11}, Lcom/android/server/wm/TaskWindowContainerController;-><init>(ILcom/android/server/wm/TaskWindowContainerListener;Lcom/android/server/wm/StackWindowController;ILandroid/graphics/Rect;IZZZLandroid/app/ActivityManager$TaskDescription;)V

    invoke-virtual {p0, v12}, Lcom/android/server/am/TaskRecord;->setWindowContainerController(Lcom/android/server/wm/TaskWindowContainerController;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Window container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " already created for task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 9

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "userId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " effectiveUid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v0, " mCallingUid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v0, " mUserSetupComplete="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mUserSetupComplete:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mCallingPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v0, :cond_3

    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "affinity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_1

    :cond_2
    :goto_0
    const-string v0, " root="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    if-eqz v0, :cond_5

    :cond_4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "VOICE: session=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " interactor=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    const/16 v1, 0x7d

    const/16 v2, 0x80

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "intent={"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "affinityIntent={"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_8

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "origActivity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_9

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "realActivity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_9
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isActivityTypeStandard()Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    if-eqz v0, :cond_b

    :cond_a
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "autoRemoveRecents="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " isPersistable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " numFullscreen="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " activityType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getActivityType()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_b
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    if-nez v0, :cond_c

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    :cond_c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "rootWasReset="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mNeverRelinquishIdentity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mReuseTask="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mLockTaskAuth="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->lockTaskAuthToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_d
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iget v1, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v0, v1, :cond_e

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v0, :cond_e

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_11

    :cond_e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "affiliation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " prevAffiliation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v0, :cond_f

    const-string/jumbo v0, "null"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_f
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_2
    const-string v0, ") nextAffiliation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v0, :cond_10

    const-string/jumbo v0, "null"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    :cond_10
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_3
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_11
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Activities="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->askedCompatMode:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    if-nez v0, :cond_13

    :cond_12
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "askedCompatMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->askedCompatMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " inRecents="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " isAvailable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_13
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_14

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "lastDescription="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_14
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mRootProcess:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_15

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mRootProcess="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mRootProcess:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_15
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "stackId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getStackId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "hasBeenVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->hasBeenVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mResizeMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->resizeModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSupportsPictureInPicture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mSupportsPictureInPicture:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " isResizeable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " lastActiveTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " (inactive for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getInactiveDuration()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "s)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "isLaunchedPairApp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isLaunchedPairApp:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mOverrideConfig="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "dexBoundsPolicy:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getDexMetadataLaunchSize()Landroid/graphics/Point;

    move-result-object v0

    if-eqz v0, :cond_16

    const-string v1, " MetaDataLaunchSize="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    :cond_16
    const-string v1, " mLastNonFullBoundsDisplayId="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBoundsDisplayId:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mLastDexBounds:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_19

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " mLastDexBounds="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_18

    const-string/jumbo v3, "{display#"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mLastDexBounds:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " bound"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mLastDexBounds:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v3, "}"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_17

    const-string v3, ", "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_18
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_19
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mDexLaunchPolicy:I

    if-eqz v0, :cond_1a

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "dexCompatMode: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mDexLaunchPolicy="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mDexLaunchPolicy:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mDexCompatCustomSize="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mDexCompatCustomSize:Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " dexMetadataLaunchSize="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getDexMetadataLaunchSize()Landroid/graphics/Point;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mIsDexCompatEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mIsDexCompatEnabled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mLastReportedDexCompatEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mLastReportedDexCompatEnabled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDexCompatUiMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mDexCompatUiMode:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mLastReportedDexCompatUiMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mLastReportedDexCompatUiMode:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_1a
    return-void
.end method

.method final findActivityInHistoryLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 4

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget-boolean v3, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method findEffectiveRootIndex()I
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-gt v2, v1, :cond_2

    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    move v0, v2

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v4, v4, 0x1000

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return v0
.end method

.method public getActivityType()I
    .locals 3

    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getActivityType()I

    move-result v1

    return v1

    :cond_1
    :goto_0
    return v0
.end method

.method getAllRunningVisibleActivitiesLocked(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->okToShowLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->visibleIgnoringKeyguard:Z

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method getBaseIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    :goto_0
    return-object v0
.end method

.method protected getChildAt(I)Lcom/android/server/am/ActivityRecord;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    return-object v0
.end method

.method protected bridge synthetic getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/am/TaskRecord;->getChildAt(I)Lcom/android/server/am/ActivityRecord;

    move-result-object p1

    return-object p1
.end method

.method protected getChildCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getDexMetadataLaunchSize()Landroid/graphics/Point;
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mDexMetadataWidthValue:Lcom/samsung/android/multidisplay/MultiDisplayManager$Utils$TypedMetaDataValue;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mDexMetadataHeightValue:Lcom/samsung/android/multidisplay/MultiDisplayManager$Utils$TypedMetaDataValue;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mDexMetadataWidthValue:Lcom/samsung/android/multidisplay/MultiDisplayManager$Utils$TypedMetaDataValue;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mDexMetadataHeightValue:Lcom/samsung/android/multidisplay/MultiDisplayManager$Utils$TypedMetaDataValue;

    invoke-static {v0, v1}, Lcom/samsung/android/multidisplay/MultiDisplayManager$Utils$TypedMetaDataValue;->isFullscreen(Lcom/samsung/android/multidisplay/MultiDisplayManager$Utils$TypedMetaDataValue;Lcom/samsung/android/multidisplay/MultiDisplayManager$Utils$TypedMetaDataValue;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    :cond_1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityStack;->getRealDisplaySize(Landroid/graphics/Point;)V

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mMultiDisplayManager:Lcom/android/server/am/MultiDisplayManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiDisplayManagerService;->getDisplayConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mDexMetadataWidthValue:Lcom/samsung/android/multidisplay/MultiDisplayManager$Utils$TypedMetaDataValue;

    iget v3, v0, Landroid/graphics/Point;->x:I

    const/16 v4, 0x3c0

    invoke-static {v2, v1, v3, v4}, Lcom/samsung/android/multidisplay/MultiDisplayManager$Utils$TypedMetaDataValue;->getDimensionPixelSize(Lcom/samsung/android/multidisplay/MultiDisplayManager$Utils$TypedMetaDataValue;III)I

    move-result v2

    iput v2, v0, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mDexMetadataHeightValue:Lcom/samsung/android/multidisplay/MultiDisplayManager$Utils$TypedMetaDataValue;

    iget v3, v0, Landroid/graphics/Point;->y:I

    const/16 v4, 0x2d0

    invoke-static {v2, v1, v3, v4}, Lcom/samsung/android/multidisplay/MultiDisplayManager$Utils$TypedMetaDataValue;->getDimensionPixelSize(Lcom/samsung/android/multidisplay/MultiDisplayManager$Utils$TypedMetaDataValue;III)I

    move-result v2

    iput v2, v0, Landroid/graphics/Point;->y:I

    return-object v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayId()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v1

    return v1

    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method getInactiveDuration()J
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method getLaunchBounds()Landroid/graphics/Rect;
    .locals 11

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getWindowingMode()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isActivityTypeStandardOrUndefined()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    if-eq v0, v2, :cond_7

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    return-object v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->inFreeformWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isDexMode()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isDexCompatEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mMultiDisplayManager:Lcom/android/server/am/MultiDisplayManagerService;

    iget-object v1, v1, Lcom/android/server/am/MultiDisplayManagerService;->mDexCompatController:Lcom/android/server/am/DexCompatController;

    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchParamsController()Lcom/android/server/am/LaunchParamsController;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, v1, Lcom/android/server/am/DexCompatController;->mTmpParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    move-object v5, p0

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/LaunchParamsController;->calculate(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/LaunchParamsController$LaunchParams;)V

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, v1, Lcom/android/server/am/DexCompatController;->mTmpParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget-object v4, v4, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_3
    return-object v3

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isFullscreenFreeform()Z

    move-result v3

    if-eqz v3, :cond_5

    return-object v2

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getDisplayId()I

    move-result v3

    iget v4, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBoundsDisplayId:I

    if-eq v3, v4, :cond_6

    return-object v1

    :cond_6
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    return-object v1

    :cond_7
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    nop

    :cond_8
    return-object v1
.end method

.method getNumRunningActivities(Lcom/android/server/am/TaskRecord$TaskActivitiesReport;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->reset()V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_4

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    iput-object v1, p1, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->base:Lcom/android/server/am/ActivityRecord;

    iget v2, p1, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->numActivities:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->numActivities:I

    iget-object v2, p1, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->top:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->top:Lcom/android/server/am/ActivityRecord;

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iput-object v1, p1, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->top:Lcom/android/server/am/ActivityRecord;

    const/4 v2, 0x0

    iput v2, p1, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->numRunning:I

    :cond_2
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_3

    iget v2, p1, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->numRunning:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lcom/android/server/am/TaskRecord$TaskActivitiesReport;->numRunning:I

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method protected getParent()Lcom/android/server/wm/ConfigurationContainer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    return-object v0
.end method

.method getResumedTaskThumbnailLocked()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    if-ne v1, p0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->screenshotResumedActivityLocked()Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getRootActivity()Lcom/android/server/am/ActivityRecord;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_0

    nop

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getSnapshot(Z)Landroid/app/ActivityManager$TaskSnapshot;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/TaskRecord;->getSnapshot(ZZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v0

    return-object v0
.end method

.method getSnapshot(ZZ)Landroid/app/ActivityManager$TaskSnapshot;
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v1

    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->takeTaskSnapshotForce()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v1, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v2, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/WindowManagerService;->getTaskSnapshot(IIZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v0

    return-object v0
.end method

.method getStack()Lcom/android/server/am/ActivityStack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/am/ActivityStack;",
            ">()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    return-object v0
.end method

.method getStackId()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method getTopActivity()Lcom/android/server/am/ActivityRecord;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/TaskRecord;->getTopActivity(Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getTopActivity(Z)Lcom/android/server/am/ActivityRecord;
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_1

    if-nez p1, :cond_0

    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    return-object v1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method getWindowContainerBounds(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskWindowContainerController;->getBounds(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    return-object v0
.end method

.method isClearingToReuseTask()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    return v0
.end method

.method isDexCompatEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mIsDexCompatEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isDexMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isFullscreenFreeform()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isDexMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->hasOverrideBounds()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isResizeable()Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/am/TaskRecord;->isResizeable(Z)Z

    move-result v0

    return v0
.end method

.method isSameIntentFilter(Lcom/android/server/am/ActivityRecord;)Z
    .locals 2

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method isSnapWindowTarget()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mSnapWindowTarget:Z

    return v0
.end method

.method isVisible()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget-boolean v3, v2, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method lockTaskAuthToString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "LOCK_TASK_AUTH_LAUNCHABLE_PRIV"

    return-object v0

    :pswitch_1
    const-string v0, "LOCK_TASK_AUTH_WHITELISTED"

    return-object v0

    :pswitch_2
    const-string v0, "LOCK_TASK_AUTH_LAUNCHABLE"

    return-object v0

    :pswitch_3
    const-string v0, "LOCK_TASK_AUTH_PINNABLE"

    return-object v0

    :pswitch_4
    const-string v0, "LOCK_TASK_AUTH_DONT_LOCK"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final moveActivityToFrontLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->mWindowContainerController:Lcom/android/server/wm/AppWindowContainerController;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskWindowContainerController;->positionChildAtTop(Lcom/android/server/wm/AppWindowContainerController;)V

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->updateEffectiveIntent()V

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->setFrontOfTask()V

    return-void
.end method

.method okToShowLocked()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v1, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

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

.method onActivityStateChanged(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/ActivityStack;->onActivityStateChanged(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack$ActivityState;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->inMultiWindowMode()Z

    move-result v0

    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->inMultiWindowMode()Z

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleUpdateMultiWindowMode(Lcom/android/server/am/TaskRecord;)V

    :cond_0
    return-void
.end method

.method protected onParentChanged()V
    .locals 3

    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->onParentChanged()V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->updateUIDsPresentOnDisplay()V

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mLastParentDisplayId:I

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityRecord;->onParentDisplayChanged(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mLastParentDisplayId:I

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->updateMinMaxSizeIfNeeded()V

    return-void
.end method

.method public onSnapshotChanged(Landroid/app/ActivityManager$TaskSnapshot;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    iget v1, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->notifyTaskSnapshotChanged(ILandroid/app/ActivityManager$TaskSnapshot;)V

    return-void
.end method

.method onlyHasTaskOverlayActivities(Z)Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    const/4 v3, 0x0

    if-ltz v1, :cond_2

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    if-eqz p1, :cond_0

    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    if-nez v5, :cond_1

    return v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    if-lez v0, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    return v2
.end method

.method final performClearTaskAtIndexLocked(IZLjava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge p1, v0, :cond_3

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->takeFromHistory()V

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v3, v1

    move-object v6, p3

    move v8, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;ZZ)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 v0, v0, -0x1

    :cond_2
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method performClearTaskForReuseLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    return-object v0
.end method

.method final performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;
    .locals 12

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    const/4 v2, 0x0

    if-ltz v1, :cond_8

    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_0

    goto :goto_3

    :cond_0
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object v4, v3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_4

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->takeOptionsLocked()Landroid/app/ActivityOptions;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    :cond_2
    iget-object v6, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "clear-task-stack"

    const/4 v11, 0x0

    move-object v7, v3

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, -0x1

    :cond_3
    :goto_2
    goto :goto_1

    :cond_4
    iget v5, v4, Lcom/android/server/am/ActivityRecord;->launchMode:I

    if-nez v5, :cond_6

    const/high16 v5, 0x20000000

    and-int/2addr v5, p2

    if-nez v5, :cond_6

    invoke-static {p2}, Lcom/android/server/am/ActivityStarter;->isDocumentLaunchesIntoExisting(I)Z

    move-result v5

    if-nez v5, :cond_6

    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "clear-task-top"

    const/4 v10, 0x0

    move-object v6, v4

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    :cond_5
    return-object v2

    :cond_6
    return-object v4

    :cond_7
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_8
    return-object v2
.end method

.method performClearTaskLocked()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    const-string v0, "clear-task-all"

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v0}, Lcom/android/server/am/TaskRecord;->performClearTaskAtIndexLocked(IZLjava/lang/String;)V

    iput-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isDexMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mFreeformController:Lcom/android/server/am/FreeformController;

    invoke-virtual {v0, p0}, Lcom/android/server/am/FreeformController;->removeToggleFreeformList(Lcom/android/server/am/TaskRecord;)V

    :cond_0
    return-void
.end method

.method removeActivity(Lcom/android/server/am/ActivityRecord;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/TaskRecord;->removeActivity(Lcom/android/server/am/ActivityRecord;Z)Z

    move-result v0

    return v0
.end method

.method removeActivity(Lcom/android/server/am/ActivityRecord;Z)Z
    .locals 3

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-ne v0, p0, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Z)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isPersistable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-virtual {v0}, Lcom/android/server/am/TaskChangeNotificationController;->notifyTaskStackChanged()V

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->updateEffectiveIntent()V

    return v1

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " does not belong to task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method removeTaskActivitiesLocked(ZLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/am/TaskRecord;->performClearTaskAtIndexLocked(IZLjava/lang/String;)V

    return-void
.end method

.method removeWindowContainer()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/LockTaskController;->clearLockedTask(Lcom/android/server/am/TaskRecord;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskWindowContainerController;->removeContainer()V

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    iget v2, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v2}, Lcom/android/server/am/TaskChangeNotificationController;->notifyTaskRemoved(I)V

    iput-object v1, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    return-void
.end method

.method removedFromRecents()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/am/TaskRecord;->closeRecentsChain()V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p0, v0}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->clearRootProcess()V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v1, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v2, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->notifyTaskRemovedFromRecents(II)V

    return-void
.end method

.method reparent(Lcom/android/server/am/ActivityStack;IIZZLjava/lang/String;)Z
    .locals 8

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;IIZZZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method reparent(Lcom/android/server/am/ActivityStack;IIZZZLjava/lang/String;)Z
    .locals 37

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move/from16 v1, p2

    move/from16 v15, p3

    move/from16 v12, p4

    move/from16 v11, p5

    move-object/from16 v10, p7

    iget-object v0, v13, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v13, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v9

    const/4 v4, 0x0

    const v0, 0x7fffffff

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    invoke-virtual {v8, v13, v14, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getReparentTargetStack(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    if-ne v3, v9, :cond_1

    return v4

    :cond_1
    iget v0, v3, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {v13, v0}, Lcom/android/server/am/TaskRecord;->canBeLaunchedOnDisplay(I)Z

    move-result v0

    if-nez v0, :cond_2

    return v4

    :cond_2
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MD_DEBUG_LOG:Z

    if-eqz v0, :cond_3

    const-string v0, "MultiDisplayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "reparent to stack #"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " for reason("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ") "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-boolean v0, v13, Lcom/android/server/am/TaskRecord;->mSnapWindowTarget:Z

    const/4 v2, 0x0

    if-nez v0, :cond_4

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v13, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowManagerService;->getSnapWindowManager()Lcom/android/server/am/SnapWindowManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/am/SnapWindowManager;->mSnapWindowRunning:Z

    if-eqz v0, :cond_4

    iget-object v0, v13, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowManagerService;->getSnapWindowManager()Lcom/android/server/am/SnapWindowManager;

    move-result-object v0

    const-string/jumbo v6, "snap task to back"

    const-string/jumbo v5, "finish"

    invoke-virtual {v0, v4, v2, v6, v5}, Lcom/android/server/am/SnapWindowManager;->setSnapWindowLocked(ZLandroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/TaskRecord;->getWindowingMode()I

    move-result v0

    invoke-static {v0, v5}, Lcom/android/server/am/TaskRecord;->replaceWindowsOnTaskMove(II)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    move v0, v4

    :goto_1
    move/from16 v23, v0

    if-eqz v23, :cond_6

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v7, v0, v12}, Lcom/android/server/wm/WindowManagerService;->setWillReplaceWindow(Landroid/os/IBinder;Z)V

    :cond_6
    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    const/16 v16, 0x1

    move/from16 v24, v16

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/TaskRecord;->isDexMode()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_f

    move-object/from16 v25, v6

    move v6, v0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/TaskRecord;->isFullscreenFreeform()Z

    move-result v0

    move/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_e

    move-object/from16 v27, v0

    move-object/from16 v4, v27

    if-eqz v4, :cond_7

    :try_start_2
    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-ne v0, v4, :cond_7

    const/4 v0, 0x1

    goto :goto_2

    :catchall_0
    move-exception v0

    move/from16 v22, v5

    move-object v5, v7

    move-object v2, v8

    move-object/from16 v35, v9

    move v4, v11

    move-object v6, v14

    move-object v7, v3

    move-object/from16 v3, v25

    goto/16 :goto_1b

    :cond_7
    const/4 v0, 0x0

    :goto_2
    move/from16 v27, v0

    if-eqz v4, :cond_8

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->getResumedActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-ne v0, v4, :cond_8

    const/16 v19, 0x1

    goto :goto_3

    :cond_8
    const/16 v19, 0x0

    :goto_3
    if-eqz v4, :cond_9

    iget-object v0, v9, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v0, v4, :cond_9

    const/16 v20, 0x1

    goto :goto_4

    :cond_9
    const/16 v20, 0x0

    :goto_4
    if-eqz v4, :cond_a

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->isTopStackOnDisplay()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v0, v4, :cond_a

    const/4 v0, 0x1

    goto :goto_5

    :cond_a
    const/4 v0, 0x0

    :goto_5
    move/from16 v28, v0

    :try_start_3
    invoke-virtual {v3, v13, v1, v2}, Lcom/android/server/am/ActivityStack;->getAdjustedPositionForTask(Lcom/android/server/am/TaskRecord;ILcom/android/server/am/ActivityRecord;)I

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_e

    move v1, v0

    :try_start_4
    iget-object v0, v13, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getWindowContainerController()Lcom/android/server/wm/StackWindowController;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_d

    if-nez v15, :cond_b

    move-object/from16 v29, v7

    const/4 v7, 0x1

    goto :goto_6

    :cond_b
    move-object/from16 v29, v7

    const/4 v7, 0x0

    :goto_6
    :try_start_5
    invoke-virtual {v0, v2, v1, v7}, Lcom/android/server/wm/TaskWindowContainerController;->reparent(Lcom/android/server/wm/StackWindowController;IZ)V

    if-eqz v15, :cond_d

    const/4 v2, 0x1

    if-ne v15, v2, :cond_c

    if-nez v27, :cond_d

    if-eqz v28, :cond_c

    goto :goto_7

    :cond_c
    const/4 v0, 0x0

    goto :goto_8

    :cond_d
    :goto_7
    const/4 v0, 0x1

    :goto_8
    move/from16 v30, v0

    if-eqz v30, :cond_e

    nop

    const/4 v0, 0x2

    goto :goto_9

    :cond_e
    nop

    const/4 v0, 0x1

    :goto_9
    invoke-virtual {v9, v13, v10, v0}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;I)V

    const/4 v7, 0x0

    invoke-virtual {v3, v13, v1, v7, v10}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;IZLjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_c

    if-eqz p6, :cond_f

    :try_start_6
    invoke-virtual {v8, v13, v9}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_a

    :catchall_1
    move-exception v0

    move-object v7, v3

    move/from16 v22, v5

    move-object v2, v8

    move-object/from16 v35, v9

    move v4, v11

    move-object v6, v14

    move-object/from16 v3, v25

    move-object/from16 v5, v29

    goto/16 :goto_1b

    :cond_f
    :goto_a
    :try_start_7
    iget-object v0, v13, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_c

    if-eqz v0, :cond_10

    :try_start_8
    iget-object v0, v13, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v7, v13, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    iget v2, v13, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v0, v7, v2}, Landroid/service/voice/IVoiceInteractionSession;->taskStarted(Landroid/content/Intent;I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_b

    :catch_0
    move-exception v0

    :cond_10
    :goto_b
    if-eqz v4, :cond_11

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move/from16 v18, v30

    move-object/from16 v21, v10

    :try_start_9
    invoke-virtual/range {v16 .. v21}, Lcom/android/server/am/ActivityStack;->moveToFrontAndResumeStateIfNeeded(Lcom/android/server/am/ActivityRecord;ZZZLjava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_USAGE_LOGGING:Z

    if-eqz v0, :cond_11

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->inFreeformWindowingMode()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, v13, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v0, v13}, Lcom/android/server/am/MultiWindowManagerService;->checkRunningFreeformWithLoggingLocked(Lcom/android/server/am/TaskRecord;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_11
    if-nez v12, :cond_12

    :try_start_a
    iget-object v0, v13, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-object/from16 v7, v25

    :try_start_b
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_c

    :catchall_2
    move-exception v0

    move/from16 v22, v5

    move-object v2, v8

    move-object/from16 v35, v9

    move v4, v11

    move-object v6, v14

    move-object/from16 v5, v29

    move-object/from16 v36, v7

    move-object v7, v3

    move-object/from16 v3, v36

    goto/16 :goto_1b

    :catchall_3
    move-exception v0

    move-object v7, v3

    move/from16 v22, v5

    move-object v2, v8

    move-object/from16 v35, v9

    move v4, v11

    move-object v6, v14

    move-object/from16 v3, v25

    move-object/from16 v5, v29

    goto/16 :goto_1b

    :cond_12
    move-object/from16 v7, v25

    :goto_c
    :try_start_c
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->prepareFreezingTaskBounds()V

    const/4 v2, 0x0

    invoke-virtual {v13, v2, v2}, Lcom/android/server/am/TaskRecord;->updateDexCompatModeLocked(Landroid/content/pm/ActivityInfo;Landroid/app/ActivityOptions;)V

    const/4 v0, 0x3

    if-ne v5, v0, :cond_13

    const/4 v0, 0x1

    goto :goto_d

    :cond_13
    const/4 v0, 0x0

    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    move-object/from16 v31, v7

    const/4 v7, 0x1

    if-eq v5, v7, :cond_14

    const/4 v7, 0x4

    if-ne v5, v7, :cond_15

    :cond_14
    :try_start_d
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-static {v2, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    if-eqz v7, :cond_1d

    if-eqz v26, :cond_15

    move/from16 v18, v1

    move-object/from16 v21, v2

    move-object v14, v3

    move-object/from16 v16, v4

    move v12, v5

    move-object/from16 v34, v8

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v8, 0x1

    goto/16 :goto_13

    :cond_15
    const/4 v7, 0x5

    if-ne v5, v7, :cond_18

    :try_start_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/TaskRecord;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v7
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    if-nez v7, :cond_16

    move/from16 v32, v1

    :try_start_f
    iget-object v1, v13, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchParamsController()Lcom/android/server/am/LaunchParamsController;

    move-result-object v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    move-object/from16 v33, v3

    const/4 v3, 0x0

    :try_start_10
    invoke-virtual {v1, v13, v3}, Lcom/android/server/am/LaunchParamsController;->layoutTask(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;)Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    move-object v1, v2

    move-object v7, v1

    goto :goto_e

    :catchall_4
    move-exception v0

    move/from16 v22, v5

    move-object v2, v8

    move-object/from16 v35, v9

    move v4, v11

    move-object v6, v14

    move-object/from16 v5, v29

    move-object/from16 v3, v31

    move/from16 v1, v32

    move-object/from16 v7, v33

    goto/16 :goto_1b

    :catchall_5
    move-exception v0

    move-object v7, v3

    move/from16 v22, v5

    move-object v2, v8

    move-object/from16 v35, v9

    move v4, v11

    move-object v6, v14

    move-object/from16 v5, v29

    move-object/from16 v3, v31

    move/from16 v1, v32

    goto/16 :goto_1b

    :cond_16
    move/from16 v32, v1

    move-object/from16 v33, v3

    const/4 v3, 0x0

    :goto_e
    const/16 v16, 0x2

    if-nez v23, :cond_17

    const/16 v17, 0x1

    goto :goto_f

    :cond_17
    const/16 v17, 0x0

    :goto_f
    move/from16 v18, v32

    move-object v1, v13

    move-object/from16 v21, v2

    move-object v2, v7

    move-object/from16 v14, v33

    move/from16 v3, v16

    move-object/from16 v16, v4

    move/from16 v4, v17

    move v12, v5

    move-object/from16 v34, v8

    const/4 v8, 0x1

    move v5, v11

    :try_start_11
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/TaskRecord;->resize(Landroid/graphics/Rect;IZZZ)Z

    move-result v1

    move/from16 v24, v1

    goto :goto_10

    :catchall_6
    move-exception v0

    move/from16 v18, v1

    move-object v7, v3

    move/from16 v22, v5

    move-object v2, v8

    move-object/from16 v35, v9

    move v4, v11

    move-object/from16 v5, v29

    move-object/from16 v3, v31

    move-object/from16 v6, p1

    goto/16 :goto_1b

    :cond_18
    move/from16 v18, v1

    move-object/from16 v21, v2

    move-object v14, v3

    move-object/from16 v16, v4

    move v12, v5

    move-object/from16 v34, v8

    const/4 v8, 0x1

    if-nez v0, :cond_1a

    const/4 v1, 0x2

    if-ne v12, v1, :cond_19

    goto :goto_11

    :cond_19
    :goto_10
    move/from16 v17, v8

    move-object/from16 v35, v9

    move v4, v11

    move/from16 v22, v12

    move-object/from16 v5, v29

    move-object/from16 v3, v31

    move-object/from16 v2, v34

    goto/16 :goto_16

    :cond_1a
    :goto_11
    if-eqz v0, :cond_1b

    if-ne v15, v8, :cond_1b

    iget-object v1, v13, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, v10}, Lcom/android/server/am/ActivityStackSupervisor;->moveRecentsStackToFront(Ljava/lang/String;)V

    :cond_1b
    invoke-virtual {v14}, Lcom/android/server/am/ActivityStack;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-nez v23, :cond_1c

    move v2, v8

    goto :goto_12

    :cond_1c
    const/4 v2, 0x0

    :goto_12
    const/4 v3, 0x0

    invoke-virtual {v13, v1, v3, v2, v11}, Lcom/android/server/am/TaskRecord;->resize(Landroid/graphics/Rect;IZZ)Z

    move-result v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    move/from16 v24, v1

    goto :goto_10

    :catchall_7
    move-exception v0

    move-object/from16 v35, v9

    move v4, v11

    move/from16 v22, v12

    move-object v7, v14

    move/from16 v1, v18

    move-object/from16 v5, v29

    move-object/from16 v3, v31

    move-object/from16 v2, v34

    move-object/from16 v6, p1

    goto/16 :goto_1b

    :cond_1d
    move/from16 v18, v1

    move-object/from16 v21, v2

    move-object v14, v3

    move-object/from16 v16, v4

    move v12, v5

    move-object/from16 v34, v8

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v8, 0x1

    :goto_13
    if-eqz v26, :cond_1e

    goto :goto_14

    :cond_1e
    move v1, v3

    :goto_14
    move-object v2, v9

    move v9, v1

    :try_start_12
    invoke-virtual {v14}, Lcom/android/server/am/ActivityStack;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    if-nez v23, :cond_1f

    move v4, v8

    goto :goto_15

    :cond_1f
    move v4, v3

    :goto_15
    move-object/from16 v5, v29

    move-object/from16 v3, v31

    move-object v7, v13

    move-object/from16 v35, v2

    move/from16 v17, v8

    move-object/from16 v2, v34

    move-object v8, v1

    move v10, v4

    move v4, v11

    move/from16 v22, v12

    move v12, v6

    :try_start_13
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/am/TaskRecord;->resize(Landroid/graphics/Rect;IZZZ)Z

    move-result v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    move/from16 v24, v1

    nop

    :goto_16
    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    nop

    if-eqz v23, :cond_21

    iget-object v0, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-nez v24, :cond_20

    move/from16 v1, v17

    goto :goto_17

    :cond_20
    const/4 v1, 0x0

    :goto_17
    invoke-virtual {v5, v0, v1}, Lcom/android/server/wm/WindowManagerService;->scheduleClearWillReplaceWindows(Landroid/os/IBinder;Z)V

    :cond_21
    if-nez v4, :cond_23

    if-nez v23, :cond_22

    move/from16 v0, v17

    goto :goto_18

    :cond_22
    const/4 v0, 0x0

    :goto_18
    const/4 v1, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v1, v0}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    goto :goto_19

    :cond_23
    const/4 v1, 0x0

    :goto_19
    move-object v7, v14

    move-object/from16 v6, p1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v0

    invoke-virtual {v2, v13, v0, v1, v7}, Lcom/android/server/am/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;IILcom/android/server/am/ActivityStack;)V

    if-ne v6, v7, :cond_24

    goto :goto_1a

    :cond_24
    move/from16 v17, v1

    :goto_1a
    return v17

    :catchall_8
    move-exception v0

    move-object v7, v14

    move-object/from16 v6, p1

    move/from16 v1, v18

    goto/16 :goto_1b

    :catchall_9
    move-exception v0

    move-object/from16 v35, v2

    move v4, v11

    move/from16 v22, v12

    move-object v7, v14

    move-object/from16 v5, v29

    move-object/from16 v3, v31

    move-object/from16 v2, v34

    move-object/from16 v6, p1

    move/from16 v1, v18

    goto/16 :goto_1b

    :catchall_a
    move-exception v0

    move/from16 v18, v1

    move-object v7, v3

    move/from16 v22, v5

    move-object v2, v8

    move-object/from16 v35, v9

    move v4, v11

    move-object v6, v14

    move-object/from16 v5, v29

    move-object/from16 v3, v31

    goto/16 :goto_1b

    :catchall_b
    move-exception v0

    move/from16 v18, v1

    move/from16 v22, v5

    move-object v2, v8

    move-object/from16 v35, v9

    move v4, v11

    move-object v6, v14

    move-object/from16 v5, v29

    move-object/from16 v36, v7

    move-object v7, v3

    move-object/from16 v3, v36

    goto :goto_1b

    :catchall_c
    move-exception v0

    move/from16 v18, v1

    move-object v7, v3

    move/from16 v22, v5

    move-object v2, v8

    move-object/from16 v35, v9

    move v4, v11

    move-object v6, v14

    move-object/from16 v3, v25

    move-object/from16 v5, v29

    goto :goto_1b

    :catchall_d
    move-exception v0

    move/from16 v18, v1

    move/from16 v22, v5

    move-object v5, v7

    move-object v2, v8

    move-object/from16 v35, v9

    move v4, v11

    move-object v6, v14

    move-object v7, v3

    move-object/from16 v3, v25

    goto :goto_1b

    :catchall_e
    move-exception v0

    move/from16 v22, v5

    move-object v5, v7

    move-object v2, v8

    move-object/from16 v35, v9

    move v4, v11

    move-object v6, v14

    move-object v7, v3

    move-object/from16 v3, v25

    goto :goto_1b

    :catchall_f
    move-exception v0

    move/from16 v22, v5

    move-object v5, v7

    move-object v2, v8

    move-object/from16 v35, v9

    move v4, v11

    move-object v7, v3

    move-object v3, v6

    move-object v6, v14

    :goto_1b
    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method reparent(Lcom/android/server/am/ActivityStack;ZIZZLjava/lang/String;)Z
    .locals 9

    if-eqz p2, :cond_0

    const v0, 0x7fffffff

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;IIZZZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method reparent(Lcom/android/server/am/ActivityStack;ZIZZZLjava/lang/String;)Z
    .locals 9

    if-eqz p2, :cond_0

    const v0, 0x7fffffff

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;IIZZZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public requestResize(Landroid/graphics/Rect;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v1, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/am/ActivityManagerService;->resizeTask(ILandroid/graphics/Rect;I)V

    return-void
.end method

.method resize(Landroid/graphics/Rect;IZZ)Z
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/TaskRecord;->resize(Landroid/graphics/Rect;IZZZ)Z

    move-result v0

    return v0
.end method

.method resize(Landroid/graphics/Rect;IZZZ)Z
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isDexMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p5, :cond_1

    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resizeTask: task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " not resizeable."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    return v1

    :cond_1
    :goto_0
    and-int/lit8 v0, p2, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/TaskRecord;->equivalentOverrideBounds(Landroid/graphics/Rect;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_3

    if-nez v0, :cond_3

    nop

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    return v1

    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    if-nez v3, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->inFreeformWindowingMode()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4, v2}, Lcom/android/server/am/ActivityStackSupervisor;->restoreRecentTaskLocked(Lcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    nop

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    return v1

    :cond_5
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/am/TaskRecord;->canResizeToBounds(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resizeTask: Can not resize task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to bounds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " resizeMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v1, p0, p1}, Lcom/android/server/am/MultiWindowManagerService;->adjustAspectRatioIfNeeded(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "am.resizeTask_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v3, 0x40

    invoke-static {v3, v4, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    move-result v1

    const/4 v5, 0x1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    if-eqz v6, :cond_7

    if-nez p4, :cond_7

    invoke-virtual {v6, v2, p3}, Lcom/android/server/am/ActivityRecord;->ensureActivityConfiguration(IZ)Z

    move-result v7

    move v5, v7

    iget-object v7, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7, v6, v2, v2}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    if-nez v5, :cond_7

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    :cond_7
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    invoke-virtual {v2, v5, v0}, Lcom/android/server/wm/TaskWindowContainerController;->resize(ZZ)V

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    return v5

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method resizeWindowContainer()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/TaskWindowContainerController;->resize(ZZ)V

    return-void
.end method

.method returnsToHomeStack()Z
    .locals 3

    const v0, 0x10004000

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, 0x10004000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const-string/jumbo v0, "task_id"

    iget v1, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "real_activity"

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    const-string/jumbo v0, "real_activity_suspended"

    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->realActivitySuspended:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "orig_activity"

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "affinity"

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "root_affinity"

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v1, "@"

    :goto_0
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string/jumbo v0, "root_affinity"

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v1, "@"

    :goto_1
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_5
    :goto_2
    const-string/jumbo v0, "root_has_reset"

    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "auto_remove_recents"

    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "asked_compat_mode"

    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->askedCompatMode:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "user_id"

    iget v1, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "user_setup_complete"

    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mUserSetupComplete:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "effective_uid"

    iget v1, p0, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "last_time_moved"

    iget-wide v3, p0, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "never_relinquish_identity"

    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    const-string/jumbo v0, "last_description"

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_6
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager$TaskDescription;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    :cond_7
    const-string/jumbo v0, "task_affiliation_color"

    iget v1, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "task_affiliation"

    iget v1, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "prev_affiliation"

    iget v1, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "next_affiliation"

    iget v1, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "calling_uid"

    iget v1, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "calling_package"

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    if-nez v1, :cond_8

    const-string v1, ""

    goto :goto_3

    :cond_8
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    :goto_3
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "resize_mode"

    iget v1, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "supports_picture_in_picture"

    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mSupportsPictureInPicture:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_9

    const-string/jumbo v0, "non_fullscreen_bounds"

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_9
    const-string/jumbo v0, "min_width"

    iget v1, p0, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "min_height"

    iget v1, p0, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "persist_task_version"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v0, :cond_a

    const-string v0, "affinity_intent"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    const-string v0, "affinity_intent"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_a
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_b

    const-string/jumbo v0, "intent"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    const-string/jumbo v0, "intent"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_b
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v1, :cond_d

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v5, Landroid/content/pm/ActivityInfo;->persistableMode:I

    if-eqz v5, :cond_d

    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->isPersistable()Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const/high16 v6, 0x80000

    and-int/2addr v5, v6

    or-int/lit16 v5, v5, 0x2000

    if-ne v5, v6, :cond_c

    if-lez v3, :cond_c

    goto :goto_5

    :cond_c
    const-string v5, "activity"

    invoke-interface {p1, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v4, p1}, Lcom/android/server/am/ActivityRecord;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    const-string v5, "activity"

    invoke-interface {p1, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_d
    :goto_5
    return-void
.end method

.method final setFrontOfTask()V
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v0, v1, :cond_2

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    if-nez v3, :cond_1

    iget-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    iput-boolean v4, v5, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    :goto_1
    iput-boolean v2, v5, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    if-lez v1, :cond_3

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    iput-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    :cond_3
    return-void
.end method

.method setIntent(Lcom/android/server/am/ActivityRecord;)V
    .locals 2

    iget v0, p1, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    invoke-direct {p0, p1}, Lcom/android/server/am/TaskRecord;->setLockTaskAuth(Lcom/android/server/am/ActivityRecord;)V

    return-void
.end method

.method setLastBoundsForMetaKeyInteractionLocked(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskWindowContainerController;->setLastBoundsForMetaKeyInteractionLocked(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method setLockTaskAuth()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/am/TaskRecord;->setLockTaskAuth(Lcom/android/server/am/ActivityRecord;)V

    return-void
.end method

.method setNextAffiliate(Lcom/android/server/am/TaskRecord;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    :goto_0
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    return-void
.end method

.method setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    :goto_0
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    return-void
.end method

.method setResizeMode(I)V
    .locals 3

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskWindowContainerController;->setResizeable(I)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    return-void
.end method

.method setRootProcess(Lcom/android/server/am/ProcessRecord;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->clearRootProcess()V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mRootProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->recentTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method setStack(Lcom/android/server/am/ActivityStack;)V
    .locals 4

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Lcom/android/server/am/TaskRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Task must be added as a Stack child first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-eq v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_4

    invoke-virtual {p0, v1}, Lcom/android/server/am/TaskRecord;->getChildAt(I)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->onActivityRemovedFromStack(Lcom/android/server/am/ActivityRecord;)V

    :cond_2
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-eqz v3, :cond_3

    invoke-virtual {p1, v2}, Lcom/android/server/am/ActivityStack;->onActivityAddedToStack(Lcom/android/server/am/ActivityRecord;)V

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->onParentChanged()V

    return-void
.end method

.method setTaskDockedResizing(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskWindowContainerController;->setTaskDockedResizing(Z)V

    return-void
.end method

.method setTaskToAffiliateWith(Lcom/android/server/am/TaskRecord;)V
    .locals 5

    invoke-direct {p0}, Lcom/android/server/am/TaskRecord;->closeRecentsChain()V

    iget v0, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iget v0, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    :goto_0
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    iget v2, v0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iget v3, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    if-eq v2, v3, :cond_1

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setTaskToAffiliateWith: nextRecents="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " affilTaskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " should be "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-ne v2, p1, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    goto :goto_1

    :cond_1
    move-object p1, v0

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p1, p0}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    invoke-virtual {p0, p1}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    invoke-virtual {p0, v1}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    return-void
.end method

.method protected setWindowContainerController(Lcom/android/server/wm/TaskWindowContainerController;)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Window container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " already created for task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public supportsSplitScreenWindowingMode()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSupportsSplitScreenMultiWindow:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isSnapWindowTarget()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->supportsSplitScreenWindowingMode()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSupportsSplitScreenMultiWindow:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mForceResizableActivities:Z

    if-nez v0, :cond_2

    invoke-direct {p0, v2}, Lcom/android/server/am/TaskRecord;->isResizeable(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isPreserveOrientationMode(I)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    goto :goto_1

    :cond_3
    :goto_0
    move v1, v2

    :goto_1
    return v1
.end method

.method public takeTaskSnapshotForce()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskWindowContainerController;->taskTaskSnapshotForce()V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " U="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " StackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getStackId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string v1, "TaskRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, " A="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_2

    const-string v1, " I="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, " aI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const-string v1, " ??"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->okToShowLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method topRunningActivityWithStartingWindowLocked()Lcom/android/server/am/ActivityRecord;
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget v3, v2, Lcom/android/server/am/ActivityRecord;->mStartingWindowState:I

    if-ne v3, v1, :cond_1

    iget-boolean v3, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->okToShowLocked()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    return-object v2

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method touchActiveTime()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    return-void
.end method

.method unminimizeFreeformTask(Z)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    iget v5, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iget v6, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    const/4 v7, 0x2

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/MultiWindowManagerService;->notifyFreeformMinimizeStateChanged(Landroid/graphics/Rect;ILandroid/content/ComponentName;III)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskWindowContainerController;->setMinimizeAnimState(I)V

    :cond_0
    return-void
.end method

.method updateDexCompatModeLocked(Landroid/content/pm/ActivityInfo;Landroid/app/ActivityOptions;)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isDexMode()Z

    move-result v0

    if-eqz v0, :cond_c

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object p1, v1

    :cond_1
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/am/TaskRecord;->mDexLaunchPolicy:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mMultiDisplayManager:Lcom/android/server/am/MultiDisplayManagerService;

    iget-object v1, v1, Lcom/android/server/am/MultiDisplayManagerService;->mDexCompatController:Lcom/android/server/am/DexCompatController;

    invoke-virtual {v1, p0, p1}, Lcom/android/server/am/DexCompatController;->updateDexCompatLaunchPolicy(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo;)V

    :cond_2
    iget v1, p0, Lcom/android/server/am/TaskRecord;->mDexLaunchPolicy:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    move v0, v1

    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mIsDexCompatEnabled:Z

    if-eq v1, v0, :cond_4

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mIsDexCompatEnabled:Z

    :cond_4
    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mIsDexCompatEnabled:Z

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getDexMetadataLaunchSize()Landroid/graphics/Point;

    move-result-object v2

    if-eqz v2, :cond_6

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    if-nez v3, :cond_5

    if-nez v4, :cond_5

    const/4 v1, 0x3

    goto :goto_2

    :cond_5
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v5, p0, Lcom/android/server/am/TaskRecord;->mDexCompatCustomSize:Landroid/graphics/Point;

    const/4 v1, 0x2

    :goto_2
    goto :goto_4

    :cond_6
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v1, 0x3

    goto :goto_3

    :cond_7
    new-instance v4, Landroid/graphics/Point;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->mDexCompatCustomSize:Landroid/graphics/Point;

    const/4 v1, 0x2

    :goto_3
    goto :goto_4

    :cond_8
    iget v3, p0, Lcom/android/server/am/TaskRecord;->mDexCompatUiMode:I

    if-nez v3, :cond_9

    const/4 v1, 0x1

    :cond_9
    :goto_4
    iget v3, p0, Lcom/android/server/am/TaskRecord;->mDexCompatUiMode:I

    if-eq v3, v1, :cond_a

    if-eqz v1, :cond_a

    iput v1, p0, Lcom/android/server/am/TaskRecord;->mDexCompatUiMode:I

    :cond_a
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    if-eqz v1, :cond_c

    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mIsDexCompatEnabled:Z

    iget-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mLastReportedDexCompatEnabled:Z

    if-ne v1, v2, :cond_b

    iget v1, p0, Lcom/android/server/am/TaskRecord;->mDexCompatUiMode:I

    iget v2, p0, Lcom/android/server/am/TaskRecord;->mLastReportedDexCompatUiMode:I

    if-eq v1, v2, :cond_c

    :cond_b
    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mIsDexCompatEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mLastReportedDexCompatEnabled:Z

    iget v1, p0, Lcom/android/server/am/TaskRecord;->mDexCompatUiMode:I

    iput v1, p0, Lcom/android/server/am/TaskRecord;->mLastReportedDexCompatUiMode:I

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    iget-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mIsDexCompatEnabled:Z

    iget v3, p0, Lcom/android/server/am/TaskRecord;->mDexCompatUiMode:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/TaskWindowContainerController;->setDexCompatMode(ZI)V

    :cond_c
    return-void
.end method

.method protected updateDexMetaData(Landroid/content/pm/ActivityInfo;)V
    .locals 4

    if-eqz p1, :cond_5

    const/4 v0, 0x0

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    return-void

    :cond_2
    const-string v1, "com.samsung.android.dex.launchwidth"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    const/4 v2, -0x1

    if-eqz v1, :cond_3

    const-string v1, "com.samsung.android.dex.launchwidth"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    const-string v1, "com.samsung.android.dex.launchwidth"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    const-string v3, "com.samsung.android.dex.launchheight"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_4

    const-string v3, "com.samsung.android.dex.launchheight"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    const-string v2, "com.samsung.android.dex.launchheight"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {v1}, Lcom/samsung/android/multidisplay/MultiDisplayManager$Utils$TypedMetaDataValue;->parseMetaData(Ljava/lang/String;)Lcom/samsung/android/multidisplay/MultiDisplayManager$Utils$TypedMetaDataValue;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/TaskRecord;->mDexMetadataWidthValue:Lcom/samsung/android/multidisplay/MultiDisplayManager$Utils$TypedMetaDataValue;

    invoke-static {v2}, Lcom/samsung/android/multidisplay/MultiDisplayManager$Utils$TypedMetaDataValue;->parseMetaData(Ljava/lang/String;)Lcom/samsung/android/multidisplay/MultiDisplayManager$Utils$TypedMetaDataValue;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/TaskRecord;->mDexMetadataHeightValue:Lcom/samsung/android/multidisplay/MultiDisplayManager$Utils$TypedMetaDataValue;

    :cond_5
    return-void
.end method

.method updateEffectiveIntent()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->findEffectiveRootIndex()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->updateTaskDescription()V

    return-void
.end method

.method updateMinMaxSizeIfNeeded()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mMinDimensions:Landroid/graphics/Point;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->equals(II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mMaxDimensions:Landroid/graphics/Point;

    invoke-virtual {v2, v1, v1}, Landroid/graphics/Point;->equals(II)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    iput v1, p0, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    iput v1, p0, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    iput v1, p0, Lcom/android/server/am/TaskRecord;->mMaxHeight:I

    iput v1, p0, Lcom/android/server/am/TaskRecord;->mMaxWidth:I

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mMultiDisplayManager:Lcom/android/server/am/MultiDisplayManagerService;

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    iget v4, v4, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {v3, v4}, Lcom/android/server/am/MultiDisplayManagerService;->getDisplayConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v3, v3

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v3, v3

    :goto_0
    iget v4, p0, Lcom/android/server/am/TaskRecord;->mLastDensityDpi:F

    cmpl-float v4, v4, v3

    if-eqz v4, :cond_9

    iput v3, p0, Lcom/android/server/am/TaskRecord;->mLastDensityDpi:F

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->getInitialDisplayDensity(I)I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_2

    const-string v1, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateMinMaxSizeIfNeeded: packageBaseDensity="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", Error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    div-float v5, v3, v4

    const/high16 v6, 0x3f000000    # 0.5f

    if-eqz v0, :cond_5

    iget-object v7, p0, Lcom/android/server/am/TaskRecord;->mMinDimensions:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    if-gez v7, :cond_3

    move v7, v1

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lcom/android/server/am/TaskRecord;->mMinDimensions:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    mul-float/2addr v7, v5

    add-float/2addr v7, v6

    float-to-int v7, v7

    :goto_1
    iput v7, p0, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    iget-object v7, p0, Lcom/android/server/am/TaskRecord;->mMinDimensions:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    if-gez v7, :cond_4

    move v7, v1

    goto :goto_2

    :cond_4
    iget-object v7, p0, Lcom/android/server/am/TaskRecord;->mMinDimensions:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    mul-float/2addr v7, v5

    add-float/2addr v7, v6

    float-to-int v7, v7

    :goto_2
    iput v7, p0, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    goto :goto_3

    :cond_5
    iput v1, p0, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    iput v1, p0, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    :goto_3
    if-eqz v2, :cond_8

    iget-object v7, p0, Lcom/android/server/am/TaskRecord;->mMaxDimensions:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    if-gez v7, :cond_6

    move v7, v1

    goto :goto_4

    :cond_6
    iget-object v7, p0, Lcom/android/server/am/TaskRecord;->mMaxDimensions:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    mul-float/2addr v7, v5

    add-float/2addr v7, v6

    float-to-int v7, v7

    :goto_4
    iput v7, p0, Lcom/android/server/am/TaskRecord;->mMaxWidth:I

    iget-object v7, p0, Lcom/android/server/am/TaskRecord;->mMaxDimensions:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    if-gez v7, :cond_7

    goto :goto_5

    :cond_7
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mMaxDimensions:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    mul-float/2addr v1, v5

    add-float/2addr v1, v6

    float-to-int v1, v1

    :goto_5
    iput v1, p0, Lcom/android/server/am/TaskRecord;->mMaxHeight:I

    goto :goto_6

    :cond_8
    iput v1, p0, Lcom/android/server/am/TaskRecord;->mMaxHeight:I

    iput v1, p0, Lcom/android/server/am/TaskRecord;->mMaxWidth:I

    :goto_6
    goto :goto_7

    :cond_9
    const-string v1, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateMinMaxSizeIfNeeded: new density equals last density. mLastDensityDpi: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/am/TaskRecord;->mLastDensityDpi:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mLastReportedMinSize:Landroid/graphics/Point;

    iget v4, p0, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    iget v5, p0, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Point;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mLastReportedMaxSize:Landroid/graphics/Point;

    iget v4, p0, Lcom/android/server/am/TaskRecord;->mMaxWidth:I

    iget v5, p0, Lcom/android/server/am/TaskRecord;->mMaxHeight:I

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Point;->equals(II)Z

    move-result v1

    if-nez v1, :cond_b

    :cond_a
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mLastReportedMinSize:Landroid/graphics/Point;

    iget v4, p0, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    iget v5, p0, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Point;->set(II)V

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mLastReportedMaxSize:Landroid/graphics/Point;

    iget v4, p0, Lcom/android/server/am/TaskRecord;->mMaxWidth:I

    iget v5, p0, Lcom/android/server/am/TaskRecord;->mMaxHeight:I

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Point;->set(II)V

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    iget v4, p0, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    iget v5, p0, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    iget v6, p0, Lcom/android/server/am/TaskRecord;->mMaxWidth:I

    iget v7, p0, Lcom/android/server/am/TaskRecord;->mMaxHeight:I

    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/android/server/wm/TaskWindowContainerController;->updateMinMaxSize(IIII)V

    :cond_b
    return-void
.end method

.method updateOverrideConfiguration(Landroid/graphics/Rect;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method updateOverrideConfiguration(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 13

    invoke-virtual {p0, p1}, Lcom/android/server/am/TaskRecord;->equivalentOverrideBounds(Landroid/graphics/Rect;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->inFreeformWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isDexMode()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    move v0, v3

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    sget-object v3, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v0, 0x1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->inSplitScreenWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mMultiWindowManager:Lcom/android/server/am/MultiWindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/MultiWindowManagerService;->cachedDensityChanged:Z

    if-eqz v3, :cond_4

    move v3, v1

    goto :goto_2

    :cond_4
    move v3, v2

    :goto_2
    move v0, v3

    :cond_5
    if-nez v0, :cond_6

    return v2

    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/server/am/TaskRecord;->updateDexCompatModeLocked(Landroid/content/pm/ActivityInfo;Landroid/app/ActivityOptions;)V

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_3

    :cond_7
    move v5, v2

    goto :goto_4

    :cond_8
    :goto_3
    move v5, v1

    :goto_4
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v12

    const/4 v6, -0x1

    if-eqz v5, :cond_c

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_b

    if-eqz v12, :cond_b

    iget-object v7, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-nez v7, :cond_9

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v7, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    goto :goto_5

    :cond_9
    iget-object v7, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_5
    iget-object v7, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-eqz v7, :cond_a

    iget-object v6, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    iget v6, v6, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    nop

    :cond_a
    iput v6, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBoundsDisplayId:I

    :cond_b
    invoke-virtual {p0, v0}, Lcom/android/server/am/TaskRecord;->setBounds(Landroid/graphics/Rect;)I

    invoke-virtual {v4}, Landroid/content/res/Configuration;->unset()V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isDexMode()Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v6, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v6, v0}, Lcom/android/server/am/ActivityStack;->getRealDisplaySize(Landroid/graphics/Point;)V

    new-instance v8, Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Point;->x:I

    iget v7, v0, Landroid/graphics/Point;->y:I

    invoke-direct {v8, v2, v2, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v6, p0

    move-object v7, v4

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/am/TaskRecord;->computeOverrideConfiguration(Landroid/content/res/Configuration;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    goto :goto_9

    :cond_c
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    iget-object v7, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v7}, Lcom/android/server/am/TaskRecord;->adjustForMinimalTaskDimensions(Landroid/graphics/Rect;)V

    iget-object v7, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v7}, Lcom/android/server/am/TaskRecord;->adjustForMaximumTaskDimensions(Landroid/graphics/Rect;)V

    iget-object v7, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Lcom/android/server/am/TaskRecord;->setBounds(Landroid/graphics/Rect;)I

    iget-object v7, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-eqz v7, :cond_d

    if-eqz v12, :cond_10

    :cond_d
    iget-object v7, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-nez v7, :cond_e

    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v7, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    goto :goto_6

    :cond_e
    iget-object v7, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_6
    iget-object v7, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-eqz v7, :cond_f

    iget-object v6, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    iget v6, v6, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    nop

    :cond_f
    iput v6, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBoundsDisplayId:I

    :cond_10
    iget-object v8, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget v7, p1, Landroid/graphics/Rect;->right:I

    if-eq v6, v7, :cond_11

    move v10, v1

    goto :goto_7

    :cond_11
    move v10, v2

    :goto_7
    iget-object v6, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    if-eq v6, v7, :cond_12

    move v11, v1

    goto :goto_8

    :cond_12
    move v11, v2

    :goto_8
    move-object v6, p0

    move-object v7, v4

    move-object v9, p2

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/am/TaskRecord;->computeOverrideConfiguration(Landroid/content/res/Configuration;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    :cond_13
    :goto_9
    invoke-virtual {p0, v4}, Lcom/android/server/am/TaskRecord;->onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isDexMode()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mTmpConfig:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_14

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_15

    :cond_14
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, p0}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleUpdateMultiWindowMode(Lcom/android/server/am/TaskRecord;)V

    :cond_15
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v4}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method updateOverrideConfigurationForStack(Lcom/android/server/am/ActivityStack;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->matchParentBounds()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchParamsController()Lcom/android/server/am/LaunchParamsController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/server/am/LaunchParamsController;->layoutTask(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;)Z

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not position non-resizeable task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " in stack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    :goto_0
    return-void
.end method

.method updateOverrideConfigurationFromLaunchBounds()Landroid/graphics/Rect;
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_1
    return-object v0
.end method

.method updateSupportScaledDensityLocked()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mFreeformDensityDisabled:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mSupportScaledDensity:Z

    if-eq v1, v0, :cond_1

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mSupportScaledDensity:Z

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/TaskWindowContainerController;->setSupportScaledDensity(Z)V

    :cond_1
    return-void
.end method

.method updateTaskDescription()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v4, v4, 0x1000

    if-eqz v4, :cond_0

    move v2, v3

    nop

    :cond_0
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_0
    if-ge v3, v1, :cond_3

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_1

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v5, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v5, v5, 0x1000

    if-nez v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v5, :cond_2

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const/high16 v6, 0x80000

    and-int/2addr v5, v6

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-lez v3, :cond_c

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    add-int/lit8 v3, v3, -0x1

    move-object v13, v4

    move-object v15, v5

    move v14, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v10

    move/from16 v20, v11

    :goto_2
    if-ltz v3, :cond_a

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v5, :cond_9

    if-nez v13, :cond_5

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v5

    move-object v13, v5

    :cond_5
    const/4 v5, -0x1

    if-ne v14, v5, :cond_6

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskDescription;->getIconResource()I

    move-result v5

    move v14, v5

    :cond_6
    if-nez v15, :cond_7

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v5

    move-object v15, v5

    :cond_7
    if-nez v16, :cond_8

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v5

    move/from16 v16, v5

    :cond_8
    if-eqz v20, :cond_9

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v17

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v18

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskDescription;->getNavigationBarColor()I

    move-result v19

    :cond_9
    const/4 v4, 0x0

    move/from16 v20, v4

    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_a
    new-instance v12, Landroid/app/ActivityManager$TaskDescription;

    const/4 v6, 0x0

    move-object v4, v12

    move-object v5, v13

    move v7, v14

    move-object v8, v15

    move/from16 v9, v16

    move/from16 v10, v17

    move/from16 v11, v18

    move/from16 v21, v1

    move-object v1, v12

    move/from16 v12, v19

    invoke-direct/range {v4 .. v12}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;ILjava/lang/String;IIII)V

    iput-object v1, v0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->mWindowContainerController:Lcom/android/server/wm/TaskWindowContainerController;

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/TaskWindowContainerController;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    :cond_b
    iget v1, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v4, v0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    if-ne v1, v4, :cond_d

    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v1

    iput v1, v0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    goto :goto_4

    :cond_c
    move/from16 v21, v1

    :cond_d
    :goto_4
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 6

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10b00000001L

    const/4 v4, 0x0

    invoke-super {p0, p1, v2, v3, v4}, Lcom/android/server/wm/ConfigurationContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V

    iget v2, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_0

    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    const-wide v4, 0x20b00000003L

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/am/ActivityRecord;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    const-wide v2, 0x10500000004L

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mStack:Lcom/android/server/am/ActivityStack;

    iget v4, v4, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000005L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_2

    const-wide v2, 0x10900000006L

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_3

    const-wide v2, 0x10900000007L

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_3
    const-wide v2, 0x10500000008L

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getActivityType()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000009L

    iget v4, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x1080000000aL

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->matchParentBounds()Z

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->matchParentBounds()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    const-wide v3, 0x10b0000000bL

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_4
    const-wide v2, 0x1050000000cL

    iget v4, p0, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x1050000000dL

    iget v4, p0, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
