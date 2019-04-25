.class public Lcom/android/server/wm/AspectRatioController;
.super Ljava/lang/Object;
.source "AspectRatioController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AspectRatioController$LazyAspectRatioWriterThread;,
        Lcom/android/server/wm/AspectRatioController$H;
    }
.end annotation


# static fields
.field private static final CASE_A:I = 0x2

.field private static final CASE_F:I = 0x0

.field private static final CASE_G:I = 0x1

.field private static final CASE_T:I = 0x3

.field private static final CASE_T_FOR_TARGET_SDK:I = 0x4

.field private static final DEFAULT_PRE_O_MAX_ASPECT_RATIO:F = 1.86f

.field private static final FORCE_DISPLAY_CUTOUT_MODE_OFF:I = -0x1

.field private static final MARGIN_FOR_CENTER_ALIGN_HEIGHT:I = 0xb90

.field private static final METADATA_MAX_ASPECT_RATIO:Ljava/lang/String; = "android.max_aspect"

.field private static final SETTINGS_NAME_SHOWN_FULLSCREEN_GUIDE_POPUP:Ljava/lang/String; = "shown_fullscreen_guide_popup_for_conventional_mode"

.field static final TAG:Ljava/lang/String; = "AspectRatioController"


# instance fields
.field private final BASE_PADDING_SIZE:I

.field private final DIR_PATH:Ljava/lang/String;

.field private final EQUAL_COMPARED_TO_BASE_DENSITY:I

.field private final FHD_INITIAL_RESOLUTION_DEVICE:I

.field private final FILE_NAME:Ljava/lang/String;

.field private final HD_INITIAL_RESOLUTION_DEVICE:I

.field private final LARGE_COMPARED_TO_BASE_DENSITY:I

.field private final SMALL_COMPARED_TO_BASE_DENSITY:I

.field private final TEXT_SIZE_RES_ID_MAP:[[I

.field private final UNKNOWN_RESOLUTION_DEVICE:I

.field private final WQHD_INITIAL_RESOLUTION_DEVICE:I

.field private mConventionalModeBarLimit:I

.field private mCurrentDisplayAspect:F

.field private mForceDisplayCutoutMode:I

.field private mForceDisplayCutoutPackage:Ljava/lang/String;

.field private mGamePkgDataHelper:Lcom/samsung/android/game/GamePkgDataHelper;

.field private final mH:Lcom/android/server/wm/AspectRatioController$H;

.field private mHasDisplayCutout:Z

.field private mLazyAspectRatioWriterThread:Lcom/android/server/wm/AspectRatioController$LazyAspectRatioWriterThread;

.field private mMarginForCenterAlign:I

.field private mMaxAspectMapsForUser:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wm/AspectRatioPackageMap;",
            ">;"
        }
    .end annotation
.end field

.field private mPaddingSizeForGUI:I

.field private final mRelaunchTaskRunnable:Ljava/lang/Runnable;

.field private mRestartTaskId:I

.field private mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

.field private mSavePackageQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTextSizeForGUI:I

.field private final mTmpCenterFrame:Landroid/graphics/Rect;

.field private final mTmpStableInsets:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/system/conventionalmode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AspectRatioController;->DIR_PATH:Ljava/lang/String;

    const-string v0, "PackageMap"

    iput-object v0, p0, Lcom/android/server/wm/AspectRatioController;->FILE_NAME:Ljava/lang/String;

    new-instance v0, Lcom/android/server/wm/AspectRatioController$H;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AspectRatioController$H;-><init>(Lcom/android/server/wm/AspectRatioController;)V

    iput-object v0, p0, Lcom/android/server/wm/AspectRatioController;->mH:Lcom/android/server/wm/AspectRatioController$H;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AspectRatioController;->mSavePackageQueue:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AspectRatioController;->mMaxAspectMapsForUser:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AspectRatioController;->mGamePkgDataHelper:Lcom/samsung/android/game/GamePkgDataHelper;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/AspectRatioController;->mTmpCenterFrame:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/AspectRatioController;->mTmpStableInsets:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/AspectRatioController;->mHasDisplayCutout:Z

    new-instance v2, Lcom/android/server/wm/AspectRatioController$1;

    invoke-direct {v2, p0}, Lcom/android/server/wm/AspectRatioController$1;-><init>(Lcom/android/server/wm/AspectRatioController;)V

    iput-object v2, p0, Lcom/android/server/wm/AspectRatioController;->mRelaunchTaskRunnable:Ljava/lang/Runnable;

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/wm/AspectRatioController;->mRestartTaskId:I

    iput v2, p0, Lcom/android/server/wm/AspectRatioController;->mForceDisplayCutoutMode:I

    iput-object v0, p0, Lcom/android/server/wm/AspectRatioController;->mForceDisplayCutoutPackage:Ljava/lang/String;

    iput v1, p0, Lcom/android/server/wm/AspectRatioController;->mConventionalModeBarLimit:I

    iput v1, p0, Lcom/android/server/wm/AspectRatioController;->mPaddingSizeForGUI:I

    iput v1, p0, Lcom/android/server/wm/AspectRatioController;->mTextSizeForGUI:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/server/wm/AspectRatioController;->BASE_PADDING_SIZE:I

    iput v2, p0, Lcom/android/server/wm/AspectRatioController;->UNKNOWN_RESOLUTION_DEVICE:I

    iput v1, p0, Lcom/android/server/wm/AspectRatioController;->WQHD_INITIAL_RESOLUTION_DEVICE:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/AspectRatioController;->FHD_INITIAL_RESOLUTION_DEVICE:I

    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/wm/AspectRatioController;->HD_INITIAL_RESOLUTION_DEVICE:I

    iput v1, p0, Lcom/android/server/wm/AspectRatioController;->LARGE_COMPARED_TO_BASE_DENSITY:I

    iput v0, p0, Lcom/android/server/wm/AspectRatioController;->EQUAL_COMPARED_TO_BASE_DENSITY:I

    iput v2, p0, Lcom/android/server/wm/AspectRatioController;->SMALL_COMPARED_TO_BASE_DENSITY:I

    const/4 v3, 0x3

    new-array v4, v3, [[I

    new-array v5, v3, [I

    fill-array-data v5, :array_0

    aput-object v5, v4, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v4, v0

    new-array v0, v3, [I

    fill-array-data v0, :array_2

    aput-object v0, v4, v2

    iput-object v4, p0, Lcom/android/server/wm/AspectRatioController;->TEXT_SIZE_RES_ID_MAP:[[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10504a4
        0x10504a3
        0x10504a5
    .end array-data

    :array_1
    .array-data 4
        0x10500bc
        0x10500bb
        0x10500bd
    .end array-data

    :array_2
    .array-data 4
        0x10500df
        0x10500de
        0x10500e0
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/server/wm/AspectRatioController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/AspectRatioController;->mRestartTaskId:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/AspectRatioController;)Lcom/android/server/wm/SamsungWindowManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/AspectRatioController;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/AspectRatioController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/AspectRatioController;->mSavePackageQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/AspectRatioController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/AspectRatioController;->saveAspectRatioPackageMap(I)V

    return-void
.end method

.method private canApplyMaxAspectRatio(Ljava/lang/String;FZ)Z
    .locals 2

    iget v0, p0, Lcom/android/server/wm/AspectRatioController;->mCurrentDisplayAspect:F

    cmpl-float v0, p2, v0

    if-gez v0, :cond_1

    const v0, 0x3fee147b    # 1.86f

    iget v1, p0, Lcom/android/server/wm/AspectRatioController;->mCurrentDisplayAspect:F

    cmpl-float v0, v0, v1

    if-gez v0, :cond_1

    if-nez p3, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/wm/AspectRatioController;->excludeAspectRatio(Ljava/lang/String;)Z

    move-result v0

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

.method private canApplyMaxAspectRatioForGame(Lcom/samsung/android/game/GamePkgData;)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private canApplyMaxAspectRatioForNonGame(I)Z
    .locals 1

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private canApplyMaxAspectRatioOfApp(F)Z
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private dumpMaxAspectMaps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/AspectRatioController;->mMaxAspectMapsForUser:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz p3, :cond_0

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/android/server/wm/AspectRatioController;->dumpMaxAspectPackage(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/AspectRatioController;->mMaxAspectMapsForUser:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AspectRatioPackageMap;

    invoke-virtual {v2}, Lcom/android/server/wm/AspectRatioPackageMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object p3, v3

    check-cast p3, Ljava/lang/String;

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/android/server/wm/AspectRatioController;->dumpMaxAspectPackage(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_2
    goto :goto_0

    :cond_2
    return-void
.end method

.method private dumpMaxAspectPackage(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;)V
    .locals 9

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "UserId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " PackageName="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-interface {v0, p4, v1, p3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, " MaxAspectState="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/wm/AspectRatioController;->isMaxAspectInner(Landroid/content/pm/ApplicationInfo;)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/wm/AspectRatioController;->maxAspectStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    invoke-direct {p0, v1}, Lcom/android/server/wm/AspectRatioController;->isResizeableApp(I)Z

    move-result v1

    invoke-direct {p0, v0}, Lcom/android/server/wm/AspectRatioController;->getMaxAspectRatio(Landroid/content/pm/ApplicationInfo;)F

    move-result v2

    move v8, v2

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move-object v2, p0

    move-object v3, p4

    move v4, v8

    move v5, v1

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/AspectRatioController;->getMaxAspectCase(Ljava/lang/String;FZZI)I

    move-result v2

    const-string v3, " MaxAspectCase="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/server/wm/AspectRatioController;->maxAspectCaseToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " maxAspectRatioOfApp="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(F)V

    const-string v3, " isResizeableApp="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v3, " targetSdkVersion="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_0

    :cond_0
    const-string v1, " ApplicationInfo is null"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    :goto_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method private excludeAspectRatio(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "android"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.google.android.gms"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.google.android.packageinstaller"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private getConventionalModeBarSize(Landroid/graphics/Rect;)I
    .locals 1

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    if-nez v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    if-lez v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    if-nez v0, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-lez v0, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_1
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    :goto_0
    return v0
.end method

.method private getGamePkgData(Ljava/lang/String;)Lcom/samsung/android/game/GamePkgData;
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/AspectRatioController;->mGamePkgDataHelper:Lcom/samsung/android/game/GamePkgDataHelper;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/game/GamePkgDataHelper;->getInstance()Lcom/samsung/android/game/GamePkgDataHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AspectRatioController;->mGamePkgDataHelper:Lcom/samsung/android/game/GamePkgDataHelper;

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/AspectRatioController;->mGamePkgDataHelper:Lcom/samsung/android/game/GamePkgDataHelper;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/AspectRatioController;->mGamePkgDataHelper:Lcom/samsung/android/game/GamePkgDataHelper;

    invoke-virtual {v1, p1}, Lcom/samsung/android/game/GamePkgDataHelper;->getGamePkgData(Ljava/lang/String;)Lcom/samsung/android/game/GamePkgData;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v1, "AspectRatioController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GamePkgDataHelper is null. Caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x6

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method private getInitialDisplayResolution(II)I
    .locals 5

    const/4 v0, -0x1

    const/16 v1, 0x780

    const/16 v2, 0x438

    const/16 v3, 0x2d0

    if-lt p1, v3, :cond_0

    if-ge p1, v2, :cond_0

    if-lt p2, v2, :cond_0

    if-ge p2, v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/16 v3, 0xa00

    const/16 v4, 0x5a0

    if-lt p1, v2, :cond_1

    if-ge p1, v4, :cond_1

    if-lt p2, v1, :cond_1

    if-ge p2, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    if-lt p1, v4, :cond_2

    const/16 v1, 0x870

    if-ge p1, v1, :cond_2

    if-lt p2, v3, :cond_2

    const/16 v1, 0xf00

    if-ge p2, v1, :cond_2

    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method private getMaxAspectCase(Ljava/lang/String;FZZI)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/wm/AspectRatioController;->canApplyMaxAspectRatio(Ljava/lang/String;FZ)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x3

    return v0

    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/wm/AspectRatioController;->canApplyMaxAspectRatioOfApp(F)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x2

    return v0

    :cond_2
    if-nez p3, :cond_3

    invoke-direct {p0, p1}, Lcom/android/server/wm/AspectRatioController;->getGamePkgData(Ljava/lang/String;)Lcom/samsung/android/game/GamePkgData;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/wm/AspectRatioController;->canApplyMaxAspectRatioForGame(Lcom/samsung/android/game/GamePkgData;)Z

    move-result v2

    if-eqz v2, :cond_3

    return v1

    :cond_3
    invoke-direct {p0, p5}, Lcom/android/server/wm/AspectRatioController;->canApplyMaxAspectRatioForNonGame(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x4

    return v0

    :cond_4
    return v0
.end method

.method private getMaxAspectPackageForUser(I)Lcom/android/server/wm/AspectRatioPackageMap;
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/AspectRatioController;->mMaxAspectMapsForUser:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AspectRatioPackageMap;

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/server/wm/AspectRatioPackageMap;

    invoke-direct {v1}, Lcom/android/server/wm/AspectRatioPackageMap;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/wm/AspectRatioController;->mMaxAspectMapsForUser:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private getMaxAspectRatio(Landroid/content/pm/ApplicationInfo;)F
    .locals 3

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->maxAspectRatio:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "android.max_aspect"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    :cond_0
    return v0
.end method

.method private getMaxAspectRatioSetValue(ILjava/lang/String;)I
    .locals 2

    nop

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/AspectRatioController;->getMaxAspectPackageForUser(I)Lcom/android/server/wm/AspectRatioPackageMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/wm/AspectRatioPackageMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p2}, Lcom/android/server/wm/AspectRatioPackageMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private getPaddingSize()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/AspectRatioController;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method private getTextSize(Lcom/android/server/wm/DisplayContent;)I
    .locals 8

    iget v0, p1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v1, p1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/AspectRatioController;->getInitialDisplayResolution(II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v1, "AspectRatioController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialDisplayResolution is unknown, size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_0
    iget v1, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v2, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    div-int/lit16 v2, v1, 0x168

    mul-int/lit16 v2, v2, 0xa0

    const/4 v3, 0x1

    iget v4, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    if-ge v2, v4, :cond_1

    const/4 v3, 0x2

    goto :goto_0

    :cond_1
    iget v4, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    if-le v2, v4, :cond_2

    const/4 v3, 0x0

    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/android/server/wm/AspectRatioController;->TEXT_SIZE_RES_ID_MAP:[[I

    aget-object v4, v4, v0

    aget v4, v4, v3

    iget v5, p1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v6, p1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v6, v1

    int-to-float v7, v5

    div-float/2addr v6, v7

    iget-object v7, p0, Lcom/android/server/wm/AspectRatioController;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v6

    float-to-int v7, v7

    return v7
.end method

.method private isMaxAspectInner(Landroid/content/pm/ApplicationInfo;)I
    .locals 8

    if-eqz p1, :cond_2

    iget-object v6, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/android/server/wm/AspectRatioController;->mHasDisplayCutout:Z

    if-nez v0, :cond_1

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    invoke-direct {p0, v0}, Lcom/android/server/wm/AspectRatioController;->isResizeableApp(I)Z

    move-result v7

    nop

    invoke-direct {p0, p1}, Lcom/android/server/wm/AspectRatioController;->getMaxAspectRatio(Landroid/content/pm/ApplicationInfo;)F

    move-result v2

    iget v5, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move-object v0, p0

    move-object v1, v6

    move v3, v7

    move v4, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/AspectRatioController;->getMaxAspectCase(Ljava/lang/String;FZZI)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x2

    return v1

    :cond_1
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v0, v6}, Lcom/android/server/wm/AspectRatioController;->getMaxAspectRatioSetValue(ILjava/lang/String;)I

    move-result v0

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private isResizeableApp(I)Z
    .locals 1

    and-int/lit16 v0, p1, 0x400

    if-nez v0, :cond_1

    and-int/lit16 v0, p1, 0x1000

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

.method private loadAllAspectRatioPackageMaps()V
    .locals 11

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/wm/AspectRatioController;->DIR_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_4

    aget-object v6, v1, v5

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "PackageMap"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v8

    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v8

    new-instance v8, Ljava/io/ObjectInputStream;

    invoke-direct {v8, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v8

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/AspectRatioPackageMap;

    iget-object v9, p0, Lcom/android/server/wm/AspectRatioController;->mMaxAspectMapsForUser:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v8

    :goto_1
    nop

    :try_start_2
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    goto :goto_6

    :catch_1
    move-exception v8

    goto :goto_2

    :catchall_0
    move-exception v4

    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v5

    :cond_0
    :goto_3
    if-eqz v3, :cond_1

    :try_start_4
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception v5

    :cond_1
    :goto_4
    throw v4

    :catch_4
    move-exception v8

    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v8

    :cond_2
    :goto_5
    if-eqz v3, :cond_3

    :try_start_6
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    :cond_3
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static maxAspectCaseToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "CASE_T_FOR_TARGET_SDK"

    return-object v0

    :pswitch_1
    const-string v0, "CASE_T"

    return-object v0

    :pswitch_2
    const-string v0, "CASE_A"

    return-object v0

    :pswitch_3
    const-string v0, "CASE_G"

    return-object v0

    :pswitch_4
    const-string v0, "CASE_F"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static maxAspectStateToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "CUTOUT_OFF"

    return-object v0

    :pswitch_1
    const-string v0, "FIXED_OFF"

    return-object v0

    :pswitch_2
    const-string v0, "FIXED_ON"

    return-object v0

    :pswitch_3
    const-string v0, "ON"

    return-object v0

    :pswitch_4
    const-string v0, "OFF"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private offsetForDisplayCutoutIfNeeded(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-ge v2, v3, :cond_1

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v3

    goto :goto_0

    :cond_1
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-le v2, v3, :cond_2

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    sub-int v0, v2, v3

    :cond_2
    :goto_0
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_3

    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v3

    goto :goto_1

    :cond_3
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-le v2, v3, :cond_4

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v3

    :cond_4
    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    return-void

    :cond_5
    :goto_2
    return-void
.end method

.method private saveAspectRatioPackageMap(I)V
    .locals 10

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/wm/AspectRatioController;->DIR_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/AspectRatioController;->getMaxAspectPackageForUser(I)Lcom/android/server/wm/AspectRatioPackageMap;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "PackageMap"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v4, v6

    new-instance v6, Ljava/io/ObjectOutputStream;

    invoke-direct {v6, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v5, v6

    invoke-virtual {v5, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    :goto_0
    nop

    :try_start_2
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    goto :goto_3

    :catch_1
    move-exception v6

    goto :goto_1

    :catchall_0
    move-exception v6

    goto :goto_4

    :catch_2
    move-exception v6

    :try_start_3
    const-string v7, "AspectRatioController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to saveAspectRatioPackageMap id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_1

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception v6

    :cond_1
    :goto_2
    if-eqz v5, :cond_2

    :try_start_5
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :cond_2
    :goto_3
    return-void

    :goto_4
    if-eqz v4, :cond_3

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_5

    :catch_4
    move-exception v7

    :cond_3
    :goto_5
    if-eqz v5, :cond_4

    :try_start_7
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_6

    :catch_5
    move-exception v7

    :cond_4
    :goto_6
    throw v6
.end method

.method private schedulePackageSave()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/AspectRatioController;->mH:Lcom/android/server/wm/AspectRatioController$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AspectRatioController$H;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/AspectRatioController;->mH:Lcom/android/server/wm/AspectRatioController$H;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AspectRatioController$H;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AspectRatioController;->mH:Lcom/android/server/wm/AspectRatioController$H;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AspectRatioController$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/AspectRatioController;->mH:Lcom/android/server/wm/AspectRatioController$H;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/wm/AspectRatioController$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private setMaxAspect(Lcom/android/server/wm/AspectRatioPackageMap;Ljava/lang/String;Z)Z
    .locals 3

    const-string v0, "AspectRatioController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMaxAspect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    const-string v2, "enable"

    goto :goto_0

    :cond_0
    const-string v2, "disable"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, p2}, Lcom/android/server/wm/AspectRatioPackageMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, p2}, Lcom/android/server/wm/AspectRatioPackageMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    xor-int/lit8 v1, p3, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/android/server/wm/AspectRatioPackageMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method


# virtual methods
.method public adjustAspectRatioFrameLocked(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    iget v10, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v11, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    const/4 v13, 0x0

    if-ge v10, v11, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v13

    :goto_0
    move v14, v4

    const/4 v4, 0x0

    iget-boolean v5, v0, Lcom/android/server/wm/AspectRatioController;->mHasDisplayCutout:Z

    if-eqz v5, :cond_2

    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v6, v5, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v6, v6, Lcom/android/server/wm/DisplayFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    invoke-virtual {v6}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/DisplayCutout;->getSafeInsets()Landroid/graphics/Rect;

    move-result-object v4

    iget-object v6, v5, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v6, v6, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, v5, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v7, v7, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-le v6, v7, :cond_1

    iget-object v6, v5, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v6, v6, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, v5, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v7, v7, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    :cond_1
    iget v6, v4, Landroid/graphics/Rect;->right:I

    sub-int v6, v10, v6

    iput v6, v4, Landroid/graphics/Rect;->right:I

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v6, v11, v6

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    :cond_2
    move-object v15, v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int v4, v10, v4

    div-int/lit8 v16, v4, 0x2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int v4, v11, v4

    div-int/lit8 v17, v4, 0x2

    if-eqz v14, :cond_3

    move v4, v13

    goto :goto_1

    :cond_3
    move/from16 v4, v16

    :goto_1
    move v9, v4

    if-eqz v14, :cond_4

    move/from16 v4, v17

    goto :goto_2

    :cond_4
    move v4, v13

    :goto_2
    move v8, v4

    iget-object v4, v0, Lcom/android/server/wm/AspectRatioController;->mTmpCenterFrame:Landroid/graphics/Rect;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v5, v9

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/2addr v6, v8

    invoke-virtual {v4, v9, v8, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_5

    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4, v13}, Lcom/android/server/wm/AppWindowToken;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v4

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_6

    move-object v5, v4

    goto :goto_4

    :cond_6
    move-object v5, v1

    :goto_4
    move-object v7, v5

    iget-object v4, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getSystemUiVisibility()I

    move-result v5

    and-int/lit16 v4, v6, 0x400

    if-nez v4, :cond_8

    and-int/lit8 v4, v5, 0x4

    if-eqz v4, :cond_7

    goto :goto_5

    :cond_7
    move v4, v13

    goto :goto_6

    :cond_8
    :goto_5
    const/4 v4, 0x1

    :goto_6
    move/from16 v18, v4

    and-int/lit8 v4, v5, 0x2

    if-eqz v4, :cond_9

    const/4 v4, 0x1

    goto :goto_7

    :cond_9
    move v4, v13

    :goto_7
    move/from16 v19, v4

    and-int/lit16 v4, v5, 0x1000

    if-eqz v4, :cond_a

    const/4 v4, 0x1

    goto :goto_8

    :cond_a
    move v4, v13

    :goto_8
    move/from16 v20, v4

    iget-object v4, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v21, 0x20000

    and-int v4, v4, v21

    if-eqz v4, :cond_b

    const/4 v4, 0x1

    goto :goto_9

    :cond_b
    move v4, v13

    :goto_9
    move/from16 v21, v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getBaseType()I

    move-result v4

    const/16 v12, 0x7d0

    if-ge v4, v12, :cond_18

    if-eqz v18, :cond_c

    if-eqz v19, :cond_c

    if-eqz v20, :cond_c

    move-object/from16 v24, v3

    move/from16 v25, v5

    move/from16 v26, v6

    move-object/from16 v22, v7

    move/from16 v23, v8

    move/from16 v27, v9

    goto/16 :goto_12

    :cond_c
    iget-object v4, v0, Lcom/android/server/wm/AspectRatioController;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/SamsungWindowManagerService;->mSamsungPolicy:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v4}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->isNavigationBarVisibleLw()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v12

    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v4, v12

    const v12, 0x461c4000    # 10000.0f

    mul-float v13, v4, v12

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v12

    const v4, 0x3fee147b    # 1.86f

    sub-float v4, v13, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v12, 0x3a83126f    # 0.001f

    cmpg-float v4, v4, v12

    if-gtz v4, :cond_d

    const/4 v4, 0x1

    goto :goto_a

    :cond_d
    const/4 v4, 0x0

    :goto_a
    move v12, v4

    iget-object v4, v0, Lcom/android/server/wm/AspectRatioController;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v4}, Lcom/android/server/policy/WindowManagerPolicy;->getNavBarPosition()I

    move-result v4

    move-object/from16 v22, v7

    const/4 v7, 0x4

    if-eq v4, v7, :cond_12

    packed-switch v4, :pswitch_data_0

    move-object/from16 v24, v3

    move/from16 v25, v5

    move/from16 v26, v6

    move/from16 v23, v8

    :goto_b
    move/from16 v27, v9

    goto/16 :goto_10

    :pswitch_0
    if-eqz v12, :cond_f

    if-eqz v15, :cond_e

    iget-object v4, v0, Lcom/android/server/wm/AspectRatioController;->mTmpCenterFrame:Landroid/graphics/Rect;

    iget v7, v15, Landroid/graphics/Rect;->left:I

    move/from16 v23, v8

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_c

    :cond_e
    move/from16 v23, v8

    const/4 v8, 0x0

    iget-object v4, v0, Lcom/android/server/wm/AspectRatioController;->mTmpCenterFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, v8, v8}, Landroid/graphics/Rect;->offsetTo(II)V

    :goto_c
    iget-object v4, v0, Lcom/android/server/wm/AspectRatioController;->mTmpCenterFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_e

    :cond_f
    move/from16 v23, v8

    const/4 v8, 0x0

    iget-object v4, v0, Lcom/android/server/wm/AspectRatioController;->mTmpCenterFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v4, v0, Lcom/android/server/wm/AspectRatioController;->mMarginForCenterAlign:I

    invoke-virtual {v2, v4, v8}, Landroid/graphics/Rect;->offsetTo(II)V

    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/android/server/wm/WindowState;->mIsCenterAlign:Z

    goto :goto_e

    :pswitch_1
    move/from16 v23, v8

    if-eqz v12, :cond_11

    if-eqz v15, :cond_10

    iget-object v4, v0, Lcom/android/server/wm/AspectRatioController;->mTmpCenterFrame:Landroid/graphics/Rect;

    iget v7, v15, Landroid/graphics/Rect;->right:I

    iget-object v8, v0, Lcom/android/server/wm/AspectRatioController;->mTmpCenterFrame:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    sub-int/2addr v7, v8

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_d

    :cond_10
    const/4 v8, 0x0

    iget-object v4, v0, Lcom/android/server/wm/AspectRatioController;->mTmpCenterFrame:Landroid/graphics/Rect;

    iget-object v7, v0, Lcom/android/server/wm/AspectRatioController;->mTmpCenterFrame:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    sub-int v7, v10, v7

    invoke-virtual {v4, v7, v8}, Landroid/graphics/Rect;->offsetTo(II)V

    :goto_d
    iget-object v4, v0, Lcom/android/server/wm/AspectRatioController;->mTmpCenterFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_e

    :cond_11
    iget-object v4, v0, Lcom/android/server/wm/AspectRatioController;->mTmpCenterFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, v0, Lcom/android/server/wm/AspectRatioController;->mTmpCenterFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v7, v0, Lcom/android/server/wm/AspectRatioController;->mMarginForCenterAlign:I

    sub-int/2addr v4, v7

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v7}, Landroid/graphics/Rect;->offset(II)V

    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/android/server/wm/WindowState;->mIsCenterAlign:Z

    :goto_e
    move-object/from16 v24, v3

    move/from16 v25, v5

    move/from16 v26, v6

    goto :goto_b

    :cond_12
    move/from16 v23, v8

    const/4 v7, 0x0

    if-eqz v12, :cond_13

    iget-object v4, v0, Lcom/android/server/wm/AspectRatioController;->mTmpCenterFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, v7, v7}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v4, v0, Lcom/android/server/wm/AspectRatioController;->mTmpCenterFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_e

    :cond_13
    and-int/lit16 v4, v6, 0x400

    if-nez v4, :cond_15

    and-int/lit8 v4, v5, 0x4

    if-nez v4, :cond_15

    iget-object v4, v0, Lcom/android/server/wm/AspectRatioController;->mTmpCenterFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean v4, v0, Lcom/android/server/wm/AspectRatioController;->mHasDisplayCutout:Z

    if-nez v4, :cond_14

    iget-object v4, v0, Lcom/android/server/wm/AspectRatioController;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v7, v3, Landroid/view/DisplayInfo;->rotation:I

    iget-object v8, v3, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    move-object/from16 v24, v3

    iget-object v3, v0, Lcom/android/server/wm/AspectRatioController;->mTmpStableInsets:Landroid/graphics/Rect;

    move/from16 v25, v5

    move v5, v7

    move/from16 v26, v6

    move v6, v10

    move v7, v11

    move/from16 v27, v9

    move-object v9, v3

    invoke-interface/range {v4 .. v9}, Lcom/android/server/policy/WindowManagerPolicy;->getStableInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    iget-object v3, v0, Lcom/android/server/wm/AspectRatioController;->mTmpStableInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    div-int/lit8 v3, v3, 0x2

    neg-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_f

    :cond_14
    move-object/from16 v24, v3

    move/from16 v25, v5

    move/from16 v26, v6

    move/from16 v27, v9

    goto :goto_f

    :cond_15
    move-object/from16 v24, v3

    move/from16 v25, v5

    move/from16 v26, v6

    move/from16 v27, v9

    const/4 v4, 0x0

    iget-object v3, v0, Lcom/android/server/wm/AspectRatioController;->mTmpCenterFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v3, v0, Lcom/android/server/wm/AspectRatioController;->mMarginForCenterAlign:I

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    :goto_f
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/wm/WindowState;->mIsCenterAlign:Z

    nop

    :goto_10
    if-eqz v15, :cond_17

    if-eqz v18, :cond_17

    if-nez v21, :cond_17

    invoke-direct {v0, v2, v15}, Lcom/android/server/wm/AspectRatioController;->offsetForDisplayCutoutIfNeeded(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_11

    :cond_16
    move-object/from16 v24, v3

    move/from16 v25, v5

    move/from16 v26, v6

    move-object/from16 v22, v7

    move/from16 v23, v8

    move/from16 v27, v9

    :cond_17
    :goto_11
    return-void

    :cond_18
    move-object/from16 v24, v3

    move/from16 v25, v5

    move/from16 v26, v6

    move-object/from16 v22, v7

    move/from16 v23, v8

    move/from16 v27, v9

    :goto_12
    iget-object v3, v0, Lcom/android/server/wm/AspectRatioController;->mTmpCenterFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz v15, :cond_19

    if-eqz v18, :cond_19

    if-nez v21, :cond_19

    invoke-direct {v0, v2, v15}, Lcom/android/server/wm/AspectRatioController;->offsetForDisplayCutoutIfNeeded(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_19
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/wm/WindowState;->mIsCenterAlign:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p1, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCurrentDisplayAspect="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AspectRatioController;->mCurrentDisplayAspect:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string v0, " mMarginForCenterAlign="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AspectRatioController;->mMarginForCenterAlign:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPaddingSizeForGUI="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AspectRatioController;->mPaddingSizeForGUI:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mTextSizeForGUI="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AspectRatioController;->mTextSizeForGUI:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    iget v0, p0, Lcom/android/server/wm/AspectRatioController;->mConventionalModeBarLimit:I

    if-eqz v0, :cond_0

    const-string v0, " mConventionalModeBarLimit="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AspectRatioController;->mConventionalModeBarLimit:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-boolean v0, p0, Lcom/android/server/wm/AspectRatioController;->mHasDisplayCutout:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHasDisplayCutout=true"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/AspectRatioController;->mGamePkgDataHelper:Lcom/samsung/android/game/GamePkgDataHelper;

    if-nez v0, :cond_2

    invoke-virtual {p1, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mGamePkgDataHelper is null"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/AspectRatioController;->mMaxAspectMapsForUser:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mMaxAspectMaps is empty"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_3
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez p4, :cond_4

    invoke-direct {p0, p1, p5, v2}, Lcom/android/server/wm/AspectRatioController;->dumpMaxAspectMaps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_4
    const-string v3, "conventionalmode"

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "cm"

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_FORCE_DISPLAY_CUTOUT_MODE:Z

    if-eqz v3, :cond_d

    iget-boolean v3, p0, Lcom/android/server/wm/AspectRatioController;->mHasDisplayCutout:Z

    if-eqz v3, :cond_d

    const-string v3, "forcedisplaycutoutmode"

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "fdcm"

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_6
    const/4 v3, -0x1

    move-object v4, v2

    :try_start_0
    array-length v5, p2

    if-ge p3, v5, :cond_7

    aget-object v5, p2, p3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    :cond_7
    move v5, v1

    :goto_0
    move v3, v5

    if-ltz v3, :cond_9

    const/4 v5, 0x2

    if-gt v3, v5, :cond_9

    add-int/lit8 p3, p3, 0x1

    array-length v5, p2

    if-ge p3, v5, :cond_8

    aget-object v2, p2, p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :cond_8
    goto :goto_1

    :cond_9
    const/4 v3, -0x1

    const/4 v2, 0x0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v2

    const/4 v3, -0x1

    const/4 v2, 0x0

    :goto_2
    iput v3, p0, Lcom/android/server/wm/AspectRatioController;->mForceDisplayCutoutMode:I

    iput-object v2, p0, Lcom/android/server/wm/AspectRatioController;->mForceDisplayCutoutPackage:Ljava/lang/String;

    goto :goto_6

    :cond_a
    :goto_3
    array-length v3, p2

    if-ne p3, v3, :cond_b

    invoke-direct {p0, p1, p5, v2}, Lcom/android/server/wm/AspectRatioController;->dumpMaxAspectMaps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    move v2, p3

    :goto_4
    array-length v3, p2

    if-ge v2, v3, :cond_d

    aget-object v3, p2, v2

    if-eqz v0, :cond_c

    invoke-direct {p0, p1, p5, v3}, Lcom/android/server/wm/AspectRatioController;->dumpMaxAspectMaps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_c
    const/4 v4, 0x0

    invoke-direct {p0, p1, p5, v4, v3}, Lcom/android/server/wm/AspectRatioController;->dumpMaxAspectPackage(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;)V

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_d
    :goto_6
    iget v2, p0, Lcom/android/server/wm/AspectRatioController;->mForceDisplayCutoutMode:I

    if-eq v2, v1, :cond_f

    invoke-virtual {p1, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mForceDisplayCutoutMode="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/AspectRatioController;->mForceDisplayCutoutMode:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    iget-object v1, p0, Lcom/android/server/wm/AspectRatioController;->mForceDisplayCutoutPackage:Ljava/lang/String;

    if-eqz v1, :cond_e

    const-string v1, " mForceDisplayCutoutPackage="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/AspectRatioController;->mForceDisplayCutoutPackage:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_e
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_f
    return-void
.end method

.method public getConventionalModeInfo(Lcom/samsung/android/view/ConventionalModeBar$Info;Landroid/graphics/Rect;)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/android/server/wm/AspectRatioController;->getConventionalModeBarSize(Landroid/graphics/Rect;)I

    move-result v0

    iget v1, p0, Lcom/android/server/wm/AspectRatioController;->mConventionalModeBarLimit:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Lcom/samsung/android/view/ConventionalModeBar$Info;->isFillNavigationColor:Z

    invoke-virtual {p1, p2}, Lcom/samsung/android/view/ConventionalModeBar$Info;->setBarSizes(Landroid/graphics/Rect;)V

    iget v0, p0, Lcom/android/server/wm/AspectRatioController;->mPaddingSizeForGUI:I

    iput v0, p1, Lcom/samsung/android/view/ConventionalModeBar$Info;->paddingSize:I

    iget v0, p0, Lcom/android/server/wm/AspectRatioController;->mTextSizeForGUI:I

    iput v0, p1, Lcom/samsung/android/view/ConventionalModeBar$Info;->textSize:I

    return-void
.end method

.method getForceDisplayCutoutMode()I
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wm/AspectRatioController;->mHasDisplayCutout:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/AspectRatioController;->mForceDisplayCutoutMode:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/AspectRatioController;->mForceDisplayCutoutMode:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/wm/AspectRatioController;->mForceDisplayCutoutMode:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method getForceDisplayCutoutPackage()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wm/AspectRatioController;->mHasDisplayCutout:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/AspectRatioController;->mForceDisplayCutoutMode:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/AspectRatioController;->mForceDisplayCutoutMode:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/AspectRatioController;->mForceDisplayCutoutPackage:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hasDisplayCutout()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/AspectRatioController;->mHasDisplayCutout:Z

    return v0
.end method

.method public init(Lcom/android/server/wm/SamsungWindowManagerService;)V
    .locals 4

    iput-object p1, p0, Lcom/android/server/wm/AspectRatioController;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    new-instance v0, Lcom/android/server/wm/AspectRatioController$LazyAspectRatioWriterThread;

    const-string v1, "LazyAspectRatioWriterThread"

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/AspectRatioController$LazyAspectRatioWriterThread;-><init>(Lcom/android/server/wm/AspectRatioController;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/AspectRatioController;->mLazyAspectRatioWriterThread:Lcom/android/server/wm/AspectRatioController$LazyAspectRatioWriterThread;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/wm/AspectRatioController;->DIR_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "AspectRatioController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Create directory : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/AspectRatioController;->loadAllAspectRatioPackageMaps()V

    iget-object v1, p0, Lcom/android/server/wm/AspectRatioController;->mLazyAspectRatioWriterThread:Lcom/android/server/wm/AspectRatioController$LazyAspectRatioWriterThread;

    invoke-virtual {v1}, Lcom/android/server/wm/AspectRatioController$LazyAspectRatioWriterThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/AspectRatioController;->mLazyAspectRatioWriterThread:Lcom/android/server/wm/AspectRatioController$LazyAspectRatioWriterThread;

    invoke-virtual {v1}, Lcom/android/server/wm/AspectRatioController$LazyAspectRatioWriterThread;->start()V

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/AspectRatioController;->resetShownFullscreenGuidePopup(I)V

    return-void
.end method

.method public isMaxAspectComponent(Landroid/content/ComponentName;I)I
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v1}, Lcom/android/server/wm/AspectRatioController;->isMaxAspectInner(Landroid/content/pm/ApplicationInfo;)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/android/server/wm/AspectRatioController;->isMaxAspectPackage(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "AspectRatioController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMaxAspectComponent: failed to get ActivityInfo for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public isMaxAspectPackage(Ljava/lang/String;I)I
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/AspectRatioController;->isMaxAspectInner(Landroid/content/pm/ApplicationInfo;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    const-string v1, "AspectRatioController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMaxAspectPackage: failed to get ApplicationInfo for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method killApplication(Ljava/lang/String;IIZ)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/wm/AspectRatioController;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const-string v5, "aspectratio"

    move-object v2, p1

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/app/ActivityManagerInternal;->killPackageProcess(Ljava/lang/String;IILjava/lang/String;Z)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AspectRatioController;->mRestartTaskId:I

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    iput p3, p0, Lcom/android/server/wm/AspectRatioController;->mRestartTaskId:I

    :cond_0
    if-eqz p4, :cond_1

    iget v1, p0, Lcom/android/server/wm/AspectRatioController;->mRestartTaskId:I

    if-eq v1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/AspectRatioController;->mH:Lcom/android/server/wm/AspectRatioController$H;

    iget-object v1, p0, Lcom/android/server/wm/AspectRatioController;->mRelaunchTaskRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AspectRatioController$H;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/wm/AspectRatioController;->mH:Lcom/android/server/wm/AspectRatioController$H;

    iget-object v1, p0, Lcom/android/server/wm/AspectRatioController;->mRelaunchTaskRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AspectRatioController$H;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public needsBlackBackground(Ljava/lang/String;)Z
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/server/wm/AspectRatioController;->getGamePkgData(Ljava/lang/String;)Lcom/samsung/android/game/GamePkgData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/game/GamePkgData;->isBlackSurfaceNeeded()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    const-string v2, "AspectRatioController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "needsBlackBackground: package="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method onConfigurationChanged()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/AspectRatioController;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/wm/AspectRatioController;->mHasDisplayCutout:Z

    iget-object v1, p0, Lcom/android/server/wm/AspectRatioController;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050069

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/AspectRatioController;->mConventionalModeBarLimit:I

    invoke-direct {p0}, Lcom/android/server/wm/AspectRatioController;->getPaddingSize()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/AspectRatioController;->mPaddingSizeForGUI:I

    invoke-direct {p0, v0}, Lcom/android/server/wm/AspectRatioController;->getTextSize(Lcom/android/server/wm/DisplayContent;)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/AspectRatioController;->mTextSizeForGUI:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "AspectRatioController"

    const-string v2, "Failed to onConfigurationChanged for AspectRatioController"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method onInitialDisplaySize(IIII)V
    .locals 2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/AspectRatioController;->mCurrentDisplayAspect:F

    iget v0, p0, Lcom/android/server/wm/AspectRatioController;->mCurrentDisplayAspect:F

    const v1, 0x461c4000    # 10000.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/AspectRatioController;->mCurrentDisplayAspect:F

    iput p4, p0, Lcom/android/server/wm/AspectRatioController;->mMarginForCenterAlign:I

    if-eqz p3, :cond_0

    const/16 v0, 0xb90

    if-eq p2, v0, :cond_0

    iget v1, p0, Lcom/android/server/wm/AspectRatioController;->mMarginForCenterAlign:I

    mul-int/2addr v1, p2

    div-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/wm/AspectRatioController;->mMarginForCenterAlign:I

    :cond_0
    return-void
.end method

.method public resetShownFullscreenGuidePopup(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/AspectRatioController;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "shown_fullscreen_guide_popup_for_conventional_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public setMaxAspectPackage(Ljava/lang/String;IZZ)V
    .locals 6

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/AspectRatioController;->setMaxAspectPackage(Ljava/lang/String;IZZI)V

    return-void
.end method

.method public setMaxAspectPackage(Ljava/lang/String;IZZI)V
    .locals 7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/wm/AspectRatioController;->getMaxAspectPackageForUser(I)Lcom/android/server/wm/AspectRatioPackageMap;

    move-result-object v3

    invoke-direct {p0, v3, p1, p3}, Lcom/android/server/wm/AspectRatioController;->setMaxAspect(Lcom/android/server/wm/AspectRatioPackageMap;Ljava/lang/String;Z)Z

    move-result v4

    iget-object v5, p0, Lcom/android/server/wm/AspectRatioController;->mSavePackageQueue:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/server/wm/AspectRatioController;->mSavePackageQueue:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/AspectRatioController;->schedulePackageSave()V

    if-eqz p4, :cond_1

    if-eqz v4, :cond_1

    const/4 v5, 0x1

    invoke-virtual {p0, p1, p2, p5, v5}, Lcom/android/server/wm/AspectRatioController;->killApplication(Ljava/lang/String;IIZ)V

    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public updateMaxAspectRatioIfNeeded(Landroid/content/pm/ActivityInfo;)F
    .locals 9

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/AspectRatioController;->getMaxAspectRatioSetValue(ILjava/lang/String;)I

    move-result v1

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v1, v7, :cond_0

    return v8

    :cond_0
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v1}, Lcom/android/server/wm/AspectRatioController;->getMaxAspectRatio(Landroid/content/pm/ApplicationInfo;)F

    move-result v3

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    invoke-direct {p0, v1}, Lcom/android/server/wm/AspectRatioController;->isResizeableApp(I)Z

    move-result v4

    iget v1, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v5

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move-object v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/AspectRatioController;->getMaxAspectCase(Ljava/lang/String;FZZI)I

    move-result v1

    if-ne v1, v7, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/wm/AspectRatioController;->getGamePkgData(Ljava/lang/String;)Lcom/samsung/android/game/GamePkgData;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/game/GamePkgData;->getAspectRatio()F

    move-result v3

    const-string v4, "AspectRatioController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateMaxAspectRatioIfNeeded: package="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "(game) ratio="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    iget v2, p1, Landroid/content/pm/ActivityInfo;->maxAspectRatio:F

    cmpl-float v2, v2, v8

    if-nez v2, :cond_5

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    goto :goto_0

    :cond_3
    const v2, 0x3fee147b    # 1.86f

    return v2

    :cond_4
    :goto_0
    return v8

    :cond_5
    :goto_1
    iget v2, p1, Landroid/content/pm/ActivityInfo;->maxAspectRatio:F

    return v2
.end method
