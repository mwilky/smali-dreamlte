.class public Lcom/samsung/android/hardware/display/AfterimageCompensationService;
.super Ljava/lang/Object;
.source "AfterimageCompensationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;,
        Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_DISPLAY_ON_TIME:Ljava/lang/String; = "com.sec.android.app.server.power.DISPLAY_ON_TIME"

.field private static final TAG:Ljava/lang/String; = "AfterimageCompensationService"


# instance fields
.field private final AFC_COPR_ROI_MAX_INDEX:I

.field private final AFC_COPR_ROI_MAX_NUMBER:I

.field private final AFC_COPR_ROI_MAX_VALUE:I

.field private final AFC_COPR_ROI_TABLE_SIZE:I

.field private final AFC_COPR_ROI_XY_NUMBER:I

.field private final AFC_DEFAULT_VALUE:Ljava/lang/String;

.field private final AFC_DIFF_DATA:Ljava/lang/String;

.field private final AFC_DIRECTORY:Ljava/lang/String;

.field private final AFC_DISPLAY_ON_TIME:Ljava/lang/String;

.field private final AFC_INIT_VALUE:Ljava/lang/String;

.field private final AFC_LOGGING_DATA:Ljava/lang/String;

.field private final AFC_LOGGING_DATA_SIZE:I

.field private final AFC_LUX_MAX_NUMBER:I

.field private final AFC_MAX_COUNT:I

.field private final AFC_ORIGINAL_VEC:Ljava/lang/String;

.field private final AFC_PANEL_CELL_ID:Ljava/lang/String;

.field private final AFC_POC_DATA:Ljava/lang/String;

.field private final AFC_REG_DATA:Ljava/lang/String;

.field private final AFC_RGB_ADDRESS:I

.field private final AFC_RGB_MAX_NUMBER:I

.field private final AFC_RGB_NUMBER:I

.field private final AFC_STATE_0:I

.field private final AFC_STATE_1:I

.field private final AFC_STATE_2:I

.field private final AFC_STATE_3:I

.field private final AFC_STATE_END:I

.field private final AFC_TABLE_SIZE:I

.field private final AFC_TIME_DATA:Ljava/lang/String;

.field private final AFC_TYPE_AFC:I

.field private final AFC_TYPE_AFC_V1:I

.field private final AFC_TYPE_AFPC:I

.field private final AFC_XRGB_BASE_POINT:I

.field private final AFC_XRGB_MAX_INDEX:I

.field private final AFC_XRGB_MAX_VALUE:I

.field private final AFC_XRGB_TABLE_SIZE:I

.field private final AFC_XY_COPR_ROI_SIZE:I

.field private final AFPC_PERIOD_COUNT:I

.field private AfcStateCondition:Z

.field private AfcThreadCondition:Z

.field private AfpcPeriodCount:I

.field private final BLF_COPR_ROI_BLUE_COPR:I

.field private final BLF_STATE_0:I

.field private final BLF_STATE_1:I

.field private final BLF_STATE_2:I

.field private final BLF_STATE_3:I

.field private final BLF_STATE_NUMBER:I

.field private final BRIGHTNESS_MAX_NUMBER:I

.field private final BRIGHTNESS_MAX_VALUE:I

.field private final DEBUG:Z

.field private final MCA_ORG_VEC:Ljava/lang/String;

.field private final MCA_REWRITED:Ljava/lang/String;

.field private final MILLIS_AFC_PERIOD:J

.field private final MILLIS_AFPC_PERIOD:J

.field private final MILLIS_BLF_CHANGE_STEP:J

.field private final MILLIS_BLF_RESET:J

.field private final MSG_BLF_ANIMATE:I

.field private final MSG_BLF_CHNAGE:I

.field private final MSG_RESET_BLF:I

.field private final RECOVERY_COMMAND:Ljava/lang/String;

.field private final SYSFS_AFC_FILE_PATH:Ljava/lang/String;

.field private final SYSFS_BRIGHTNESS_FILE_PATH:Ljava/lang/String;

.field private final SYSFS_COPR_FILE_PATH:Ljava/lang/String;

.field private final SYSFS_PANEL_CELL_ID:Ljava/lang/String;

.field private final SYSFS_SENSOR_COPR_FILE_PATH:Ljava/lang/String;

.field private interpolationCoprRoi:[I

.field private interpolationCoprRoiDouble:[D

.field private interpolationCount:I

.field private interpolationLuminance:I

.field private interpolationLuminanceDouble:D

.field private mAFPCVersion1:Z

.field private mAfcLoggingDataValid:Z

.field private mAfcState:I

.field private mAfcTable:[[[I

.field private mAfcThread:Ljava/lang/Thread;

.field private mAfcType:I

.field private mAfpcModelNumber:I

.field private mAfpcSize:I

.field private mBrightnessBorderValue:[I

.field private final mContext:Landroid/content/Context;

.field private mCoprRoi:[I

.field private mCoprRoiTable:[[I

.field private mLuminance:I

.field private mMcaRewrited:Z

.field private mScreenWatchingReceiver:Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;

.field private mThreadAFPC:Z

.field private mThreadAPC:Z

.field private mThreadSleepTime:J

.field private mXrgbTable:[[I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 22

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->DEBUG:Z

    const/4 v1, 0x0

    iput v1, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_TYPE_AFC:I

    const/4 v2, 0x1

    iput v2, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_TYPE_AFC_V1:I

    const/4 v3, 0x2

    iput v3, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_TYPE_AFPC:I

    iput v1, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MSG_RESET_BLF:I

    iput v2, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MSG_BLF_ANIMATE:I

    const/4 v4, 0x3

    iput v4, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MSG_BLF_CHNAGE:I

    iput v1, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->BLF_STATE_0:I

    iput v2, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->BLF_STATE_1:I

    iput v3, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->BLF_STATE_2:I

    iput v4, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->BLF_STATE_3:I

    iput v4, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->BLF_STATE_NUMBER:I

    const-wide/16 v5, 0x2710

    iput-wide v5, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MILLIS_AFC_PERIOD:J

    const-wide/32 v7, 0xea60

    iput-wide v7, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MILLIS_AFPC_PERIOD:J

    iput-wide v5, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MILLIS_BLF_RESET:J

    iput-wide v5, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MILLIS_BLF_CHANGE_STEP:J

    const-string v9, "/sys/class/lcd/panel/copr_roi"

    iput-object v9, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->SYSFS_COPR_FILE_PATH:Ljava/lang/String;

    const-string v9, "/sys/class/sensors/light_sensor/copr_roix"

    iput-object v9, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->SYSFS_SENSOR_COPR_FILE_PATH:Ljava/lang/String;

    const-string v9, "/sys/class/lcd/panel/brt_avg"

    iput-object v9, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->SYSFS_BRIGHTNESS_FILE_PATH:Ljava/lang/String;

    const-string v9, "/sys/class/mdnie/mdnie/afc"

    iput-object v9, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->SYSFS_AFC_FILE_PATH:Ljava/lang/String;

    const-string v9, "/sys/class/lcd/panel/cell_id"

    iput-object v9, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->SYSFS_PANEL_CELL_ID:Ljava/lang/String;

    const-string v9, "/efs/afc"

    iput-object v9, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_DIRECTORY:Ljava/lang/String;

    const-string v9, "/efs/afc/cell_id"

    iput-object v9, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_PANEL_CELL_ID:Ljava/lang/String;

    const-string v9, "/efs/afc/logging_data"

    iput-object v9, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_LOGGING_DATA:Ljava/lang/String;

    const-string v9, "/efs/afc/afc_data"

    iput-object v9, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_REG_DATA:Ljava/lang/String;

    const-string v9, "/efs/afc/display_on_time"

    iput-object v9, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_DISPLAY_ON_TIME:Ljava/lang/String;

    const-string v9, "/efs/afc/org.vec"

    iput-object v9, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_ORIGINAL_VEC:Ljava/lang/String;

    const-string v9, "/efs/afc/time_data"

    iput-object v9, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_TIME_DATA:Ljava/lang/String;

    const-string v9, "/efs/afc/poc_data"

    iput-object v9, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_POC_DATA:Ljava/lang/String;

    const-string v9, "/efs/afc/diff_data"

    iput-object v9, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_DIFF_DATA:Ljava/lang/String;

    const-string v9, "/efs/afc/rewrited"

    iput-object v9, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MCA_REWRITED:Ljava/lang/String;

    const-string v9, "/efs/afc/original.vec"

    iput-object v9, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MCA_ORG_VEC:Ljava/lang/String;

    const-string v9, "/cache/recovery/command"

    iput-object v9, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->RECOVERY_COMMAND:Ljava/lang/String;

    const-string v9, "0"

    iput-object v9, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_DEFAULT_VALUE:Ljava/lang/String;

    const-string v9, "1 255 255 255 255 255 255 255 255 255 255 255 255"

    iput-object v9, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_INIT_VALUE:Ljava/lang/String;

    const/16 v9, 0xf

    iput v9, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_LOGGING_DATA_SIZE:I

    const v9, 0x10c8e0

    iput v9, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_MAX_COUNT:I

    iput v4, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_RGB_NUMBER:I

    const/16 v9, 0xb

    iput v9, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->BRIGHTNESS_MAX_NUMBER:I

    const/16 v10, 0xc

    iput v10, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_COPR_ROI_MAX_NUMBER:I

    iput v9, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->BLF_COPR_ROI_BLUE_COPR:I

    const/16 v11, 0x5a0

    iput v11, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFPC_PERIOD_COUNT:I

    const/16 v11, 0x10

    iput v11, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_COPR_ROI_XY_NUMBER:I

    const/16 v12, 0x100

    iput v12, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_COPR_ROI_MAX_VALUE:I

    const/16 v13, 0x101

    iput v13, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_COPR_ROI_MAX_INDEX:I

    const/16 v14, 0xff

    iput v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_XRGB_MAX_VALUE:I

    iput v12, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_XRGB_MAX_INDEX:I

    iput v9, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_LUX_MAX_NUMBER:I

    const/16 v14, 0x168

    iput v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_RGB_MAX_NUMBER:I

    const/16 v15, 0x78

    iput v15, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_RGB_ADDRESS:I

    const/16 v15, 0x88

    iput v15, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_XRGB_BASE_POINT:I

    iput v11, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_XY_COPR_ROI_SIZE:I

    const/16 v15, 0x303

    iput v15, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_COPR_ROI_TABLE_SIZE:I

    const/16 v14, 0x300

    iput v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_XRGB_TABLE_SIZE:I

    const/16 v14, 0x3de0

    iput v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_TABLE_SIZE:I

    iput v1, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_STATE_0:I

    iput v2, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_STATE_1:I

    iput v3, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_STATE_2:I

    iput v4, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_STATE_3:I

    const/4 v14, 0x4

    iput v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_STATE_END:I

    const/16 v14, 0x5dc

    iput v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->BRIGHTNESS_MAX_VALUE:I

    const/4 v14, 0x0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcThread:Ljava/lang/Thread;

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mScreenWatchingReceiver:Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;

    iput v1, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I

    new-array v12, v9, [I

    iput-object v12, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    iput-boolean v1, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcLoggingDataValid:Z

    iput-boolean v1, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcStateCondition:Z

    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcThreadCondition:Z

    iput-boolean v1, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadAPC:Z

    iput-boolean v1, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadAFPC:Z

    iput-boolean v1, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAFPCVersion1:Z

    iput-boolean v1, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mMcaRewrited:Z

    new-array v12, v10, [I

    iput-object v12, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mCoprRoi:[I

    iput v1, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mLuminance:I

    iput v1, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodCount:I

    const-wide/16 v11, 0x0

    iput-wide v11, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadSleepTime:J

    iput v1, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I

    new-array v11, v10, [I

    iput-object v11, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCoprRoi:[I

    iput v1, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    new-array v10, v10, [D

    iput-object v10, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCoprRoiDouble:[D

    const-wide/16 v10, 0x0

    iput-wide v10, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminanceDouble:D

    iput v1, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I

    iput v1, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcModelNumber:I

    iput v1, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcSize:I

    const/4 v10, 0x1

    move-object/from16 v11, p1

    iput-object v11, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    new-instance v12, Landroid/content/IntentFilter;

    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v12, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v12, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v12, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v12, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.server.power.DISPLAY_ON_TIME"

    invoke-virtual {v12, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;

    invoke-direct {v4, v0, v14}, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Lcom/samsung/android/hardware/display/AfterimageCompensationService$1;)V

    invoke-virtual {v1, v4, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Ljava/io/File;

    const-string v4, "/efs/afc"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v4, Ljava/io/File;

    const-string v14, "/sys/class/lcd/panel/copr_roi"

    invoke-direct {v4, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    and-int/lit8 v10, v10, 0x1

    :cond_1
    new-instance v4, Ljava/io/File;

    const-string v14, "/sys/class/lcd/panel/brt_avg"

    invoke-direct {v4, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    and-int/lit8 v10, v10, 0x1

    :cond_2
    new-instance v4, Ljava/io/File;

    const-string v14, "/sys/class/mdnie/mdnie/afc"

    invoke-direct {v4, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    and-int/lit8 v10, v10, 0x1

    :cond_3
    iget-object v4, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v14, 0x10e0007

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iget-object v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v13, 0x10e0008

    invoke-virtual {v14, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    iget-object v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v9, 0x10e0009

    invoke-virtual {v14, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iget-object v14, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1070043

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v14

    iget-object v15, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v5, 0x107003c

    invoke-virtual {v15, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    iput-object v5, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    iget-object v5, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1070042

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    iget-object v6, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v15, 0x1070059

    invoke-virtual {v6, v15}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    iget-object v15, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v7, 0x107003d

    invoke-virtual {v15, v7}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    if-lt v4, v3, :cond_4

    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadAFPC:Z

    const-wide/32 v2, 0xea60

    iput-wide v2, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadSleepTime:J

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadAPC:Z

    const-wide/16 v2, 0x2710

    iput-wide v2, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadSleepTime:J

    :goto_0
    const/4 v2, 0x1

    if-ne v4, v2, :cond_5

    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAFPCVersion1:Z

    :cond_5
    const-string v2, "AfterimageCompensationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mAfcType : "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", mThreadAFPC : "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadAFPC:Z

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", mThreadSleepTime : "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v18, v12

    iget-wide v11, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadSleepTime:J

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", mAFPCVersion1 : "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAFPCVersion1:Z

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "AfterimageCompensationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mAfpcModelNumber : "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", mAfpcSize : "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v10, :cond_f

    iget-boolean v2, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadAPC:Z

    if-eqz v2, :cond_f

    array-length v2, v14

    const/16 v3, 0x10

    if-ne v2, v3, :cond_f

    array-length v2, v5

    const/16 v3, 0x303

    if-ne v2, v3, :cond_f

    iget-object v2, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    array-length v2, v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_f

    array-length v2, v6

    const/16 v3, 0x300

    if-ne v2, v3, :cond_f

    array-length v2, v7

    const/16 v3, 0x3de0

    if-ne v2, v3, :cond_f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    move-object/from16 v19, v1

    const/4 v12, 0x3

    const/16 v15, 0x101

    filled-new-array {v12, v15}, [I

    move-result-object v1

    const-class v15, I

    invoke-static {v15, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iput-object v1, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mCoprRoiTable:[[I

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v12, :cond_7

    const/4 v3, 0x0

    move v8, v3

    :goto_2
    const/16 v3, 0x101

    if-ge v8, v3, :cond_6

    iget-object v12, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mCoprRoiTable:[[I

    aget-object v12, v12, v1

    add-int/lit8 v15, v2, 0x1

    aget v2, v5, v2

    aput v2, v12, v8

    add-int/lit8 v8, v8, 0x1

    move v2, v15

    goto :goto_2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    const/4 v12, 0x3

    goto :goto_1

    :cond_7
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x3

    const/16 v12, 0x100

    filled-new-array {v8, v12}, [I

    move-result-object v15

    const-class v12, I

    invoke-static {v12, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[I

    iput-object v12, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mXrgbTable:[[I

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v8, :cond_9

    const/4 v3, 0x0

    :goto_4
    const/16 v12, 0x100

    if-ge v3, v12, :cond_8

    iget-object v15, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mXrgbTable:[[I

    aget-object v15, v15, v1

    add-int/lit8 v17, v2, 0x1

    aget v2, v6, v2

    aput v2, v15, v3

    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v17

    goto :goto_4

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    move/from16 v20, v1

    const/16 v11, 0xb

    const/16 v12, 0x168

    const/4 v15, 0x4

    filled-new-array {v15, v11, v12}, [I

    move-result-object v1

    const-class v11, I

    invoke-static {v11, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[[I

    iput-object v1, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcTable:[[[I

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v15, :cond_c

    const/4 v3, 0x0

    :goto_6
    const/16 v11, 0xb

    if-ge v3, v11, :cond_b

    const/4 v8, 0x0

    :goto_7
    const/16 v12, 0x168

    if-ge v8, v12, :cond_a

    iget-object v11, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcTable:[[[I

    aget-object v11, v11, v1

    aget-object v11, v11, v3

    add-int/lit8 v16, v2, 0x1

    aget v2, v7, v2

    aput v2, v11, v8

    add-int/lit8 v8, v8, 0x1

    move/from16 v2, v16

    const/16 v11, 0xb

    goto :goto_7

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_b
    const/16 v12, 0x168

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_c
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x0

    aget v12, v14, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    :goto_8
    array-length v12, v14

    if-ge v2, v12, :cond_d

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v12, v14, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_d
    const-string v12, "AfterimageCompensationService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v21, v1

    const-string v1, "COPR ROI XY - "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "/sys/class/lcd/panel/copr_roi"

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v1, v12}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->update_check_panel_id()V

    new-instance v1, Ljava/io/File;

    const-string v12, "/efs/afc/rewrited"

    invoke-direct {v1, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mMcaRewrited:Z

    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->makeInitEfsFile()V

    iget-boolean v1, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mMcaRewrited:Z

    if-nez v1, :cond_10

    const-string v1, "/sys/class/mdnie/mdnie/afc"

    const-string v12, "1 255 255 255 255 255 255 255 255 255 255 255 255"

    invoke-direct {v0, v1, v12}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "AfterimageCompensationService"

    const-string v12, "AFC Data Write 1 255 255 255 255 255 255 255 255 255 255 255 255"

    invoke-static {v1, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->initLoggingData()V

    goto :goto_9

    :cond_f
    move-object/from16 v19, v1

    :cond_10
    :goto_9
    iget-boolean v1, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadAFPC:Z

    if-eqz v1, :cond_15

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v8, Ljava/io/File;

    const-string v11, "/efs/afc/poc_data"

    invoke-direct {v8, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_11

    const/4 v1, 0x1

    :cond_11
    new-instance v8, Ljava/io/File;

    const-string v11, "/efs/afc/time_data"

    invoke-direct {v8, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_12

    const/4 v2, 0x1

    :cond_12
    new-instance v8, Ljava/io/File;

    const-string v11, "/efs/afc/diff_data"

    invoke-direct {v8, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_13

    const/4 v3, 0x1

    :cond_13
    invoke-static {v13, v9, v1, v2, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataInit(IIIII)I

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->update_check_panel_id()V

    new-instance v8, Ljava/io/File;

    const-string v11, "/efs/afc/org.vec"

    invoke-direct {v8, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_14

    const/4 v8, 0x1

    iput-boolean v8, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcStateCondition:Z

    :cond_14
    goto :goto_a

    :cond_15
    const-string v1, "AfterimageCompensationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Init Failed  mAfcSupport = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mXY.length - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v14

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", coprRoiTableArray.length - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "AfterimageCompensationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Init Failed  xrgbTableArray.length - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", afcTableArray.length - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcStateCondition:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mMcaRewrited:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->display_compensation(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadSleepTime:J

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadAFPC:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->getBrightness()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodCount:I

    return v0
.end method

.method static synthetic access$1502(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodCount:I

    return p1
.end method

.method static synthetic access$1508(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I
    .locals 2

    iget v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodCount:I

    return v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mLuminance:I

    return v0
.end method

.method static synthetic access$1700(II)I
    .locals 1

    invoke-static {p0, p1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataRead(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(I)I
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataSave(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->getCoprRoiNBrightness()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mCoprRoi:[I

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mCoprRoiTable:[[I

    return-object v0
.end method

.method static synthetic access$2200(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[D
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCoprRoiDouble:[D

    return-object v0
.end method

.method static synthetic access$2300(Lcom/samsung/android/hardware/display/AfterimageCompensationService;IID)D
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->getAverage(IID)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2400(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminanceDouble:D

    return-wide v0
.end method

.method static synthetic access$2402(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)D
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminanceDouble:D

    return-wide p1
.end method

.method static synthetic access$2500(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCoprRoi:[I

    return-object v0
.end method

.method static synthetic access$2602(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    return p1
.end method

.method static synthetic access$2700(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcThreadCondition:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->receive_screen_on_intent()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->receive_screen_off_intent()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I

    return v0
.end method

.method static synthetic access$708(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I
    .locals 2

    iget v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I

    return v0
.end method

.method static synthetic access$710(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I
    .locals 2

    iget v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->writeLoggingDataEfs()V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadAPC:Z

    return v0
.end method

.method private display_compensation(I)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    const-string v2, "AfterimageCompensationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AfcThread display_compensation - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v1, :cond_17

    const/4 v2, 0x4

    if-gt v1, v2, :cond_17

    const/4 v3, 0x0

    const/16 v4, 0xc

    new-array v5, v4, [I

    new-array v6, v4, [I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    iput v1, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I

    iget v10, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    iget-object v11, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    const/4 v13, 0x2

    const/16 v14, 0x8

    const/4 v15, 0x7

    const/16 v16, 0x1

    const/4 v12, 0x6

    if-lt v10, v11, :cond_0

    iget v10, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    iget-object v11, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    aget v11, v11, v16

    if-ge v10, v11, :cond_0

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_0
    iget v10, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    iget-object v11, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    aget v11, v11, v16

    if-lt v10, v11, :cond_1

    iget v10, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    iget-object v11, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    aget v11, v11, v13

    if-ge v10, v11, :cond_1

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_1
    iget v10, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    iget-object v11, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    aget v11, v11, v13

    const/16 v16, 0x3

    if-lt v10, v11, :cond_2

    iget v10, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    iget-object v11, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    aget v11, v11, v16

    if-ge v10, v11, :cond_2

    const/4 v7, 0x2

    goto/16 :goto_0

    :cond_2
    iget v10, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    iget-object v11, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    aget v11, v11, v16

    if-lt v10, v11, :cond_3

    iget v10, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    iget-object v11, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    aget v11, v11, v2

    if-ge v10, v11, :cond_3

    const/4 v7, 0x3

    goto/16 :goto_0

    :cond_3
    iget v10, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    iget-object v11, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    aget v11, v11, v2

    const/16 v16, 0x5

    if-lt v10, v11, :cond_4

    iget v10, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    iget-object v11, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    aget v11, v11, v16

    if-ge v10, v11, :cond_4

    const/4 v7, 0x4

    goto/16 :goto_0

    :cond_4
    iget v10, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    iget-object v11, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    aget v11, v11, v16

    if-lt v10, v11, :cond_5

    iget v10, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    iget-object v11, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    aget v11, v11, v12

    if-ge v10, v11, :cond_5

    const/4 v7, 0x5

    goto :goto_0

    :cond_5
    iget v10, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    iget-object v11, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    aget v11, v11, v12

    if-lt v10, v11, :cond_6

    iget v10, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    iget-object v11, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    aget v11, v11, v15

    if-ge v10, v11, :cond_6

    const/4 v7, 0x6

    goto :goto_0

    :cond_6
    iget v10, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    iget-object v11, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    aget v11, v11, v15

    if-lt v10, v11, :cond_7

    iget v10, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    iget-object v11, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    aget v11, v11, v14

    if-ge v10, v11, :cond_7

    const/4 v7, 0x7

    goto :goto_0

    :cond_7
    iget v10, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    iget-object v11, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    aget v11, v11, v14

    const/16 v16, 0x9

    if-lt v10, v11, :cond_8

    iget v10, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    iget-object v11, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    aget v11, v11, v16

    if-ge v10, v11, :cond_8

    const/16 v7, 0x8

    goto :goto_0

    :cond_8
    iget v10, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    iget-object v11, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    aget v11, v11, v16

    const/16 v16, 0xa

    if-lt v10, v11, :cond_9

    iget v10, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    iget-object v11, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    aget v11, v11, v16

    if-ge v10, v11, :cond_9

    const/16 v7, 0x9

    goto :goto_0

    :cond_9
    iget v10, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    iget-object v11, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    aget v11, v11, v16

    if-lt v10, v11, :cond_a

    const/16 v7, 0xa

    goto :goto_0

    :cond_a
    const/4 v7, 0x0

    :goto_0
    if-eqz v9, :cond_16

    const/4 v3, 0x0

    :goto_1
    const/16 v10, 0xff

    if-ge v3, v4, :cond_f

    iget-object v11, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCoprRoi:[I

    aget v11, v11, v3

    if-ltz v11, :cond_e

    iget-object v11, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCoprRoi:[I

    aget v11, v11, v3

    if-gt v11, v10, :cond_e

    rem-int/lit8 v11, v3, 0x3

    iget-object v4, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mXrgbTable:[[I

    aget-object v4, v4, v11

    iget-object v2, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCoprRoi:[I

    aget v2, v2, v3

    aget v2, v4, v2

    aput v2, v5, v3

    aget v2, v5, v3

    const/16 v4, 0x88

    if-lt v2, v4, :cond_c

    aget v2, v5, v3

    if-gt v2, v10, :cond_c

    aget v2, v5, v3

    sub-int/2addr v2, v10

    neg-int v2, v2

    rem-int/lit8 v11, v3, 0x3

    mul-int/lit8 v11, v11, 0x78

    add-int/2addr v2, v11

    iget-object v11, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcTable:[[[I

    add-int/lit8 v16, v1, -0x1

    aget-object v11, v11, v16

    aget-object v11, v11, v7

    aget v11, v11, v2

    aput v11, v6, v3

    const-string v11, "AfterimageCompensationService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "AFC i = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", mLuminance  = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", mXRGB -  "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v14, v5, v3

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", index  = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", mAFC  = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v14, v6, v3

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    aget v11, v6, v3

    if-lt v11, v4, :cond_b

    aget v4, v6, v3

    if-le v4, v10, :cond_d

    :cond_b
    aput v10, v6, v3

    goto :goto_2

    :cond_c
    aput v10, v6, v3

    :cond_d
    :goto_2
    goto :goto_3

    :cond_e
    aput v10, v6, v3

    :goto_3
    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x4

    const/16 v4, 0xc

    const/4 v13, 0x2

    const/16 v14, 0x8

    goto/16 :goto_1

    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v4, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAFPCVersion1:Z

    if-eqz v4, :cond_12

    const/4 v4, 0x0

    aget v11, v6, v12

    aget v13, v6, v15

    if-lt v11, v13, :cond_10

    aget v4, v6, v15

    goto :goto_4

    :cond_10
    aget v4, v6, v12

    :goto_4
    const/16 v11, 0x8

    aget v13, v6, v11

    if-lt v4, v13, :cond_11

    aget v4, v6, v11

    :cond_11
    mul-int v11, v10, v4

    aget v13, v6, v12

    const/4 v14, 0x2

    mul-int/2addr v13, v14

    add-int/2addr v11, v13

    aget v12, v6, v12

    div-int/2addr v11, v12

    mul-int v12, v10, v4

    aget v13, v6, v15

    mul-int/2addr v13, v14

    add-int/2addr v12, v13

    aget v13, v6, v15

    div-int/2addr v12, v13

    mul-int/2addr v10, v4

    const/16 v13, 0x8

    aget v15, v6, v13

    mul-int/2addr v15, v14

    add-int/2addr v10, v15

    aget v13, v6, v13

    div-int/2addr v10, v13

    const-string v13, "1 "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " 255 255 255 "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_12
    const-string v4, "1 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    :goto_5
    if-ge v3, v12, :cond_13

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v6, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_13
    const/4 v3, 0x3

    :goto_6
    if-ge v3, v12, :cond_14

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v6, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_14
    const-string v4, " 255 255 255"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    :goto_7
    if-ge v3, v12, :cond_15

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v6, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_15
    :goto_8
    const-string v4, "AfterimageCompensationService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "AFC - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "/sys/class/mdnie/mdnie/afc"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v4, v10}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v4, "/efs/afc/afc_data"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v4, v10}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_9

    :cond_16
    const-string v2, "/sys/class/mdnie/mdnie/afc"

    const-string v4, "0"

    invoke-direct {v0, v2, v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v2, "AfterimageCompensationService"

    const-string v4, "AFC Data - 0"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    iget v2, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_17

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcStateCondition:Z

    :cond_17
    return-void
.end method

.method private fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "AfterimageCompensationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fileWriteString : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    nop

    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    nop

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v3, "AfterimageCompensationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fileWriteString : file not found : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return v1

    :goto_0
    nop

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return v1
.end method

.method private getAfcLoggingData()Z
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    :try_start_0
    const-string v3, "/efs/afc/logging_data"

    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->readStrFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    array-length v4, v3

    const/16 v5, 0xf

    if-ne v4, v5, :cond_1

    aget-object v1, v3, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I

    const-string v1, "AfterimageCompensationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mAfcState - "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    aget-object v1, v3, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I

    const-string v1, "AfterimageCompensationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "interpolationCount - "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    aget-object v1, v3, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    const-string v1, "AfterimageCompensationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "interpolationLuminance - "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v4, 0x3

    :goto_0
    if-ge v4, v5, :cond_0

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCoprRoi:[I

    aget-object v7, v3, v4

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v6, v1

    const-string v6, "AfterimageCompensationService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "interpolationCoprRoi_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " value - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCoprRoi:[I

    aget v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    move v2, v1

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    :try_start_2
    const-string v4, "AfterimageCompensationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NumberFormatException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_1
    goto :goto_2

    :catch_1
    move-exception v1

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return v2
.end method

.method private getAverage(IID)D
    .locals 6

    int-to-double v0, p1

    int-to-double v2, p2

    if-lez p1, :cond_0

    const v4, 0x10c8e0

    if-gt p1, v4, :cond_0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v4, v0, v4

    mul-double/2addr v4, p3

    add-double/2addr v4, v2

    div-double/2addr v4, v0

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    return-wide v4
.end method

.method private getBrightness()Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "/sys/class/lcd/panel/brt_avg"

    invoke-static {v2}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->readStrFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    if-eqz v0, :cond_1

    const-string v2, "AfterimageCompensationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BRIGHTNESS = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mLuminance:I

    iget v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mLuminance:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ltz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v1, 0x0

    :try_start_2
    const-string v3, "AfterimageCompensationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NumberFormatException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_0
    goto :goto_1

    :catch_1
    move-exception v2

    const/4 v1, 0x0

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return v1
.end method

.method private getCoprRoiNBrightness()Z
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    const/4 v4, 0x1

    :try_start_0
    iget v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I

    const/16 v6, 0xc

    if-ne v5, v4, :cond_2

    const-string v5, "/sys/class/sensors/light_sensor/copr_roix"

    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->readStrFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const-string v7, "AfterimageCompensationService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CoprRoi = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    array-length v7, v5

    if-ne v7, v6, :cond_1

    move v7, v2

    :goto_0
    if-ge v7, v6, :cond_0

    iget-object v8, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mCoprRoi:[I

    aget-object v9, v5, v7

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v8, v7
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v6

    const/4 v1, 0x0

    :try_start_2
    const-string v7, "AfterimageCompensationService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NumberFormatException : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    goto :goto_3

    :cond_2
    iget v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I

    if-nez v5, :cond_5

    const-string v5, "/sys/class/lcd/panel/copr_roi"

    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->readStrFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const-string v7, "AfterimageCompensationService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CoprRoi = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    array-length v7, v5

    if-ne v7, v6, :cond_4

    move v7, v2

    :goto_2
    if-ge v7, v6, :cond_3

    iget-object v8, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mCoprRoi:[I

    aget-object v9, v5, v7

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v8, v7
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x1

    :cond_4
    goto :goto_3

    :catch_1
    move-exception v6

    const/4 v1, 0x0

    :try_start_4
    const-string v7, "AfterimageCompensationService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NumberFormatException : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_5
    :goto_3
    goto :goto_4

    :catch_2
    move-exception v5

    const/4 v1, 0x0

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    :try_start_5
    const-string v5, "/sys/class/lcd/panel/brt_avg"

    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->readStrFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    if-eqz v0, :cond_7

    const-string v5, "AfterimageCompensationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BRIGHTNESS = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :try_start_6
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mLuminance:I

    iget v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mLuminance:I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    if-ltz v5, :cond_6

    const/4 v3, 0x1

    :cond_6
    goto :goto_5

    :catch_3
    move-exception v5

    const/4 v3, 0x0

    :try_start_7
    const-string v6, "AfterimageCompensationService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NumberFormatException : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :cond_7
    :goto_5
    goto :goto_6

    :catch_4
    move-exception v5

    const/4 v3, 0x0

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6
    if-eqz v1, :cond_8

    if-eqz v3, :cond_8

    move v2, v4

    nop

    :cond_8
    return v2
.end method

.method private getStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x80

    const/16 v2, 0x80

    new-array v3, v2, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v2, :cond_0

    aput-byte v6, v3, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v2

    nop

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v5, v2

    if-eqz v5, :cond_1

    new-instance v2, Ljava/lang/String;

    add-int/lit8 v7, v5, -0x1

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v6, v7, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v4, v2

    :cond_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v2

    const-string v6, "AfterimageCompensationService"

    const-string v7, "File Close error"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_3

    :catch_1
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    const-string v6, "AfterimageCompensationService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_2
    move-exception v2

    :try_start_4
    const-string v6, "AfterimageCompensationService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FileNotFoundException : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_2

    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :cond_2
    :goto_2
    return-object v4

    :goto_3
    if-eqz v0, :cond_3

    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    :catch_3
    move-exception v6

    const-string v7, "AfterimageCompensationService"

    const-string v8, "File Close error"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_4
    throw v2
.end method

.method private initLoggingData()V
    .locals 8

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    const-string v2, "/efs/afc/logging_data"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/16 v2, 0xc

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->getAfcLoggingData()Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I

    if-ltz v5, :cond_0

    iget v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I

    if-gt v5, v3, :cond_0

    iget v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I

    if-ltz v5, :cond_0

    iget v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I

    const v6, 0x10c8e0

    if-gt v5, v6, :cond_0

    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcLoggingDataValid:Z

    iget v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    int-to-double v5, v5

    iput-wide v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminanceDouble:D

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCoprRoiDouble:[D

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCoprRoi:[I

    aget v6, v6, v0

    int-to-double v6, v6

    aput-wide v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v5, "AfterimageCompensationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mLogginFileExist =  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", mAfcState - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", interpolationCount - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", mAfcLoggingDataValid - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcLoggingDataValid:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcLoggingDataValid:Z

    if-nez v5, :cond_1

    const/4 v5, 0x0

    iput v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I

    iput v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I

    iput v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCoprRoi:[I

    aput v5, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-string v2, "AfterimageCompensationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mAfcState - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", interpolationCount - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I

    if-ge v2, v3, :cond_2

    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcStateCondition:Z

    goto :goto_2

    :cond_2
    const-string v2, "AfterimageCompensationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAfcState is already done - mAfcState - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcLoggingDataValid:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I

    if-lez v2, :cond_3

    iget v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I

    if-gt v2, v3, :cond_3

    new-instance v2, Ljava/io/File;

    const-string v3, "/efs/afc/afc_data"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    :try_start_0
    const-string v2, "/efs/afc/afc_data"

    invoke-static {v2}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->readStrFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AfterimageCompensationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AFC registe data is - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "/sys/class/mdnie/mdnie/afc"

    invoke-direct {p0, v3, v2}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_3
    return-void
.end method

.method private makeInitEfsFile()V
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/afc/display_on_time"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/efs/afc/display_on_time"

    const-string v1, "0"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AfterimageCompensationService"

    const-string v1, "Init AFC_DISPLAY_ON_TIME EFS"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static native nativeDataInit(IIIII)I
.end method

.method private static native nativeDataRead(II)I
.end method

.method private static native nativeDataSave(I)I
.end method

.method private static native nativeDataVerify()I
.end method

.method private static native nativeDataWrite(I)I
.end method

.method private static readStrFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v4

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v4

    nop

    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BufferedReader Close IOException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    nop

    :goto_1
    nop

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v4

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    const-string v7, "FileReader Close IOException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_0
    :goto_3
    goto/16 :goto_8

    :catchall_0
    move-exception v4

    goto/16 :goto_9

    :catch_2
    move-exception v4

    :try_start_3
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception v4

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BufferedReader Close IOException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5

    :cond_1
    :goto_4
    nop

    :goto_5
    if-eqz v0, :cond_0

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_4
    move-exception v4

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :catch_5
    move-exception v4

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v1, :cond_2

    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_6

    :catch_6
    move-exception v4

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BufferedReader Close IOException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_7

    :cond_2
    :goto_6
    nop

    :goto_7
    if-eqz v0, :cond_0

    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_3

    :catch_7
    move-exception v4

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_2

    :goto_8
    return-object v2

    :goto_9
    nop

    if-eqz v1, :cond_3

    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_a

    :catch_8
    move-exception v5

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BufferedReader Close IOException : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_b

    :cond_3
    :goto_a
    nop

    :goto_b
    if-eqz v0, :cond_4

    :try_start_a
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_c

    :catch_9
    move-exception v5

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FileReader Close IOException : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    nop

    :cond_4
    :goto_c
    throw v4
.end method

.method private receive_screen_off_intent()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcThreadCondition:Z

    return-void
.end method

.method private receive_screen_on_intent()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcStateCondition:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcThreadCondition:Z

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcThread:Ljava/lang/Thread;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method private update_check_panel_id()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "AfterimageCompensationService"

    const-string/jumbo v3, "update_cell_id() function call"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v2, "/sys/class/lcd/panel/cell_id"

    invoke-static {v2}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->readStrFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const-string v2, "AfterimageCompensationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USER_PANEL_INFO : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/File;

    const-string v3, "/efs/afc/cell_id"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_a

    :try_start_1
    const-string v2, "/efs/afc/cell_id"

    invoke-static {v2}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->readStrFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    const-string v2, "AfterimageCompensationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EFS_PANEL_INFO : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    if-eqz v1, :cond_8

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "AfterimageCompensationService"

    const-string v3, "EFS_PANEL_INFO , USER_PANEL_INFO Diff O"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "/efs/afc/cell_id"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "AfterimageCompensationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fileWriteString success_1 USER_PANEL_INFO : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " , EFS_PANEL_INFO : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/efs/afc/afc_data"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/io/File;

    const-string v3, "/efs/afc/afc_data"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "AfterimageCompensationService"

    const-string v3, "AFC_REG_DATA.delete() success"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v2, Ljava/io/File;

    const-string v3, "/efs/afc/logging_data"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/io/File;

    const-string v3, "/efs/afc/logging_data"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "AfterimageCompensationService"

    const-string v3, "AFC_LOGGING_DATA.delete() success"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v2, Ljava/io/File;

    const-string v3, "/efs/afc/display_on_time"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/io/File;

    const-string v3, "/efs/afc/display_on_time"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "/efs/afc/display_on_time"

    const-string v3, "0"

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v2, "AfterimageCompensationService"

    const-string v3, "AFC_DISPLAY_ON_TIME.delete() success"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v2, Ljava/io/File;

    const-string v3, "/efs/afc/rewrited"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/io/File;

    const-string v3, "/efs/afc/rewrited"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "AfterimageCompensationService"

    const-string v3, "MCA_REWRITED.delete() success"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v2, Ljava/io/File;

    const-string v3, "/efs/afc/original.vec"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/io/File;

    const-string v3, "/efs/afc/original.vec"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "AfterimageCompensationService"

    const-string v3, "MCA_ORG_VEC.delete() success"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-instance v2, Ljava/io/File;

    const-string v3, "/efs/afc/org.vec"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Ljava/io/File;

    const-string v3, "/efs/afc/rewrited"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "AfterimageCompensationService"

    const-string v3, "AFC_ORIGINAL_VEC.delete() success"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    new-instance v2, Ljava/io/File;

    const-string v3, "/efs/afc/time_data"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Ljava/io/File;

    const-string v3, "/efs/afc/original.vec"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "AfterimageCompensationService"

    const-string v3, "AFC_TIME_DATA.delete() success"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    new-instance v2, Ljava/io/File;

    const-string v3, "/efs/afc/poc_data"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v2, Ljava/io/File;

    const-string v3, "/efs/afc/original.vec"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "AfterimageCompensationService"

    const-string v3, "AFC_POC_DATA.delete() success"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_8
    if-nez v1, :cond_9

    const-string v2, "AfterimageCompensationService"

    const-string v3, "EFS_PANEL_INFO value is NULL"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "/efs/afc/cell_id"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v2, "AfterimageCompensationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UPDATE EFS_PANEL_INFO : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_9
    const-string v2, "AfterimageCompensationService"

    const-string v3, "EFS_PANEL_INFO , USER_PANEL_INFO Diff X"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_a
    new-instance v2, Ljava/io/File;

    const-string v3, "/efs/afc/cell_id"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "/efs/afc/cell_id"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "AfterimageCompensationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fileWriteString success_2 USER_PANEL_INFO : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " , EFS_PANEL_INFO : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_2
    return-void
.end method

.method private writeLoggingDataEfs()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xc

    if-ge v1, v2, :cond_0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCoprRoi:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "AfterimageCompensationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AFC Loggin Data - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "/efs/afc/logging_data"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public afpcDataVerify()Z
    .locals 3

    const-string v0, "AfterimageCompensationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "afpcDataVerify - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataVerify()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public disableAFPC()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadAFPC:Z

    return-void
.end method

.method public enableAFPC()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadAFPC:Z

    return-void
.end method
