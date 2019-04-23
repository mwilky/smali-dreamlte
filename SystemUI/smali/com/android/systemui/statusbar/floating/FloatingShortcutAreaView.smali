.class public Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;
.super Landroid/widget/FrameLayout;
.source "FloatingShortcutAreaView.java"


# static fields
.field public static final SHORTCUT_SHOWING_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mActivityStarterCallback:Lcom/android/systemui/plugins/ActivityStarter$Callback;

.field private mAppShortcutCenterPos:[I

.field private mAppShortcutIcon:Lcom/android/systemui/widget/SystemUIImageView;

.field private mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mDebugLogMonitor:Lcom/android/systemui/statusbar/DebugLogMonitor;

.field private mEffectLayer:Landroid/view/ViewGroup;

.field private mEffectPlayer:Lcom/android/systemui/statusbar/floating/EffectPlayer;

.field private mIsExpanded:Z

.field private mIsScreenOn:Z

.field private mLastUpdatedRotation:I

.field private mLastUserActivityTime:J

.field private mLaunchInterface:Lcom/android/systemui/statusbar/phone/KeyguardLaunchInterface;

.field private mPm:Landroid/os/PowerManager;

.field private final mRotationListener:Lcom/android/keyguard/biometric/KeyguardBiometricRotationListener;

.field private mScreeLifeCycleObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

.field private final mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mShortcutCallback:Lcom/android/systemui/util/ShortcutManager$ShortcutCallback;

.field private mShortcutLayer:Landroid/widget/FrameLayout;

.field private mShortcutLocationCalculator:Lcom/android/systemui/statusbar/floating/ShortcutLocationCalculator;

.field private mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

.field private mShortcutState:Lcom/android/systemui/statusbar/floating/ShortcutState;

.field private mShortcutViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/floating/FloatingShortcutView;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mStatusBarState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/view/animation/SineInOut90;

    invoke-direct {v0}, Lcom/samsung/android/view/animation/SineInOut90;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->SHORTCUT_SHOWING_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mIsScreenOn:Z

    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mAppShortcutCenterPos:[I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutViewList:Ljava/util/ArrayList;

    iput v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mStatusBarState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mIsExpanded:Z

    iput v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mLastUpdatedRotation:I

    new-instance v0, Lcom/android/systemui/statusbar/floating/-$$Lambda$FloatingShortcutAreaView$1vGylsk1B7XCilu-2INvNmq-WMI;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/floating/-$$Lambda$FloatingShortcutAreaView$1vGylsk1B7XCilu-2INvNmq-WMI;-><init>(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mRotationListener:Lcom/android/keyguard/biometric/KeyguardBiometricRotationListener;

    new-instance v0, Lcom/android/systemui/statusbar/floating/-$$Lambda$FloatingShortcutAreaView$-jDVShsUV4FLARJc0tmHH8VAesw;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/floating/-$$Lambda$FloatingShortcutAreaView$-jDVShsUV4FLARJc0tmHH8VAesw;-><init>(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mLastUserActivityTime:J

    new-instance v0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$1;-><init>(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$2;-><init>(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mScreeLifeCycleObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    new-instance v0, Lcom/android/systemui/statusbar/floating/-$$Lambda$FloatingShortcutAreaView$O30fSDJ-f-xKhbfT59D95KjEa7c;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/floating/-$$Lambda$FloatingShortcutAreaView$O30fSDJ-f-xKhbfT59D95KjEa7c;-><init>(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mActivityStarterCallback:Lcom/android/systemui/plugins/ActivityStarter$Callback;

    new-instance v0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$3;-><init>(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutCallback:Lcom/android/systemui/util/ShortcutManager$ShortcutCallback;

    new-instance v0, Lcom/android/systemui/statusbar/floating/HiddenStyleShortcutLocationCalculator;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/floating/HiddenStyleShortcutLocationCalculator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutLocationCalculator:Lcom/android/systemui/statusbar/floating/ShortcutLocationCalculator;

    new-instance v0, Lcom/android/systemui/statusbar/floating/CircleEffectPlayer;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/floating/CircleEffectPlayer;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mEffectPlayer:Lcom/android/systemui/statusbar/floating/EffectPlayer;

    invoke-static {}, Lcom/android/systemui/util/ShortcutManager;->getInstance()Lcom/android/systemui/util/ShortcutManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    const-class v0, Lcom/android/systemui/statusbar/DebugLogMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/DebugLogMonitor;

    iput-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mDebugLogMonitor:Lcom/android/systemui/statusbar/DebugLogMonitor;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)Lcom/android/systemui/statusbar/floating/ShortcutState;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutState:Lcom/android/systemui/statusbar/floating/ShortcutState;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->updateEnableState()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mIsScreenOn:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->updateShortcutInfo()V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutLocationCalculator:Lcom/android/systemui/statusbar/floating/ShortcutLocationCalculator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/floating/ShortcutLocationCalculator;->getScreenRotation()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mLastUpdatedRotation:I

    if-eq v1, v0, :cond_0

    sget-object v1, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onRotationChanged() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mLastUpdatedRotation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mLastUpdatedRotation:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->updateAppShortcutIconLocation()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->updateEnableState()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->updateEnableState()V

    return-void
.end method

.method public static synthetic lambda$new$2(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mEffectPlayer:Lcom/android/systemui/statusbar/floating/EffectPlayer;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/floating/EffectPlayer;->hideEffect()V

    return-void
.end method

.method public static synthetic lambda$onFinishInflate$3(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mIsExpanded:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->updateAppShortcutIconLocation()V

    :cond_0
    return-void
.end method

.method private relocationShortcutView()V
    .locals 6

    sget-object v0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "relocationShortcutView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mAppShortcutCenterPos:[I

    aget v3, v3, v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mAppShortcutCenterPos:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->hideViewImmediately(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateAppShortcutIconLocation()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mAppShortcutIcon:Lcom/android/systemui/widget/SystemUIImageView;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateAppShortcutIconLocation() mAppShortcutIcon is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutLocationCalculator:Lcom/android/systemui/statusbar/floating/ShortcutLocationCalculator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/floating/ShortcutLocationCalculator;->getAppShortcutIconLocation()Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mAppShortcutIcon:Lcom/android/systemui/widget/SystemUIImageView;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mAppShortcutIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v3}, Lcom/android/systemui/widget/SystemUIImageView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/widget/SystemUIImageView;->setX(F)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mAppShortcutIcon:Lcom/android/systemui/widget/SystemUIImageView;

    iget v2, v0, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mAppShortcutIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v3}, Lcom/android/systemui/widget/SystemUIImageView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/widget/SystemUIImageView;->setY(F)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mAppShortcutCenterPos:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget v3, v0, Landroid/graphics/Point;->x:I

    const/4 v4, 0x1

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mAppShortcutCenterPos:[I

    aget v1, v1, v4

    iget v3, v0, Landroid/graphics/Point;->y:I

    if-eq v1, v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v4

    :goto_1
    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mAppShortcutCenterPos:[I

    iget v5, v0, Landroid/graphics/Point;->x:I

    aput v5, v3, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mAppShortcutCenterPos:[I

    iget v3, v0, Landroid/graphics/Point;->y:I

    aput v3, v2, v4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->relocationShortcutView()V

    :cond_3
    return-void
.end method

.method private updateEnableState()V
    .locals 11

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_FLOATING_SHORTCUT:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "floating"

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->getLockShortcutType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mIsScreenOn:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {v2}, Lcom/android/systemui/util/ShortcutManager;->hasShortcutForLeft()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {v2}, Lcom/android/systemui/util/ShortcutManager;->hasShortcutForRight()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v4

    :goto_1
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v5

    xor-int/2addr v5, v4

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v6

    xor-int/2addr v6, v4

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    if-eqz v5, :cond_3

    if-eqz v6, :cond_3

    move v7, v4

    goto :goto_2

    :cond_3
    move v7, v3

    :goto_2
    sget-object v8, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateEnableState() currentState = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutState:Lcom/android/systemui/statusbar/floating/ShortcutState;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/floating/ShortcutState;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", isFloatingShortcutEnabled="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", isSettingEnabled="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", isScreenOn="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", isMoreThanOneShortcutEnabled="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", isEmergencyModeDisabled="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", isUPSMDisabled="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_6

    iget-object v8, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/systemui/Rune;->isFingerprintSensorInDisplay(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v8

    if-eqz v8, :cond_4

    move v3, v4

    nop

    :cond_4
    if-eqz v3, :cond_5

    new-instance v4, Lcom/android/systemui/statusbar/floating/FingerNormalShortcutState;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/floating/FingerNormalShortcutState;-><init>(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->changeState(Lcom/android/systemui/statusbar/floating/ShortcutState;)V

    goto :goto_3

    :cond_5
    new-instance v4, Lcom/android/systemui/statusbar/floating/SwipeNormalShortcutState;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/floating/SwipeNormalShortcutState;-><init>(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->changeState(Lcom/android/systemui/statusbar/floating/ShortcutState;)V

    :goto_3
    goto :goto_4

    :cond_6
    new-instance v3, Lcom/android/systemui/statusbar/floating/DisabledShortcutState;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/floating/DisabledShortcutState;-><init>(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->changeState(Lcom/android/systemui/statusbar/floating/ShortcutState;)V

    :goto_4
    return-void
.end method

.method private updateShortcutInfo()V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutLayer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateShortcutInfo() mShortcutLayer is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->getShortcutList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->updateAppShortcutIconLocation()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;

    iget-object v5, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutViewList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v2, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutViewList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->setShortcut(Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;)V

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0d0078

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;

    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->setShortcut(Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutViewList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutLayer:Landroid/widget/FrameLayout;

    const/4 v7, -0x2

    invoke-virtual {v6, v5, v7, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutLocationCalculator:Lcom/android/systemui/statusbar/floating/ShortcutLocationCalculator;

    iget-object v7, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutViewList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mAppShortcutCenterPos:[I

    aget v8, v8, v1

    iget-object v9, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mAppShortcutCenterPos:[I

    aget v4, v9, v4

    invoke-virtual {v6, v2, v7, v8, v4}, Lcom/android/systemui/statusbar/floating/ShortcutLocationCalculator;->getShortcutLocation(IIII)Landroid/graphics/Point;

    move-result-object v4

    iget v6, v4, Landroid/graphics/Point;->x:I

    iget v7, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->hideViewImmediately(II)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v4

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutLayer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private updateVisibility()V
    .locals 3

    iget v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mStatusBarState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mIsExpanded:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    nop

    :cond_1
    :goto_0
    move v0, v2

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->setVisibility(I)V

    return-void
.end method

.method private userActivity()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mPm:Landroid/os/PowerManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "userActivity() mPm is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mLastUserActivityTime:J

    const-wide/16 v4, 0x7d0

    add-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-lez v2, :cond_1

    return-void

    :cond_1
    iput-wide v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mLastUserActivityTime:J

    iget-object v2, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mPm:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/os/PowerManager;->userActivity(JII)V

    return-void
.end method


# virtual methods
.method changeState(Lcom/android/systemui/statusbar/floating/ShortcutState;)V
    .locals 3

    if-nez p1, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->TAG:Ljava/lang/String;

    const-string v1, "changeState() return - state is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/floating/ShortcutState;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutState:Lcom/android/systemui/statusbar/floating/ShortcutState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/floating/ShortcutState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeState() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutState:Lcom/android/systemui/statusbar/floating/ShortcutState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/floating/ShortcutState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " reset"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutState:Lcom/android/systemui/statusbar/floating/ShortcutState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/floating/ShortcutState;->resetState()V

    return-void

    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeState() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutState:Lcom/android/systemui/statusbar/floating/ShortcutState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/floating/ShortcutState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/floating/ShortcutState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutState:Lcom/android/systemui/statusbar/floating/ShortcutState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/floating/ShortcutState;->exitState()V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/floating/ShortcutState;->enterState()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutState:Lcom/android/systemui/statusbar/floating/ShortcutState;

    return-void
.end method

.method dimAppIcon()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mAppShortcutIcon:Lcom/android/systemui/widget/SystemUIImageView;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->TAG:Ljava/lang/String;

    const-string v1, "dimAppIcon() mAppShortcutIcon is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mAppShortcutIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0}, Lcom/android/systemui/widget/SystemUIImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method findFocusedView(II)Lcom/android/systemui/statusbar/floating/FloatingShortcutView;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;

    invoke-virtual {v1, p1, p2}, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->isCollision(II)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public focusShortcut(Landroid/view/View;)V
    .locals 8

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->showShortcut()V

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;

    if-ne v1, p1, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f99999a    # 1.2f

    const v5, 0x3f99999a    # 1.2f

    const-wide/16 v6, 0x15e

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->focusView(FFFJ)V

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const-wide/16 v6, 0x96

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->focusView(FFFJ)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method getEffectPlayer()Lcom/android/systemui/statusbar/floating/EffectPlayer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mEffectPlayer:Lcom/android/systemui/statusbar/floating/EffectPlayer;

    return-object v0
.end method

.method public getShortcutList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    new-instance v2, Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {v3, v1}, Lcom/android/systemui/util/ShortcutManager;->getShortcutDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {v3, v1}, Lcom/android/systemui/util/ShortcutManager;->getIntent(I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;->setLaunchIntent(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {v3, v1}, Lcom/android/systemui/util/ShortcutManager;->isShortcutEnabled(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/floating/FloatingShortcutFlyweight;->setEnabled(Z)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method hideAppIcon()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mAppShortcutIcon:Lcom/android/systemui/widget/SystemUIImageView;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->TAG:Ljava/lang/String;

    const-string v1, "hideAppIcon() mAppShortcutIcon is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mAppShortcutIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0}, Lcom/android/systemui/widget/SystemUIImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method hideShortcut()V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutLocationCalculator:Lcom/android/systemui/statusbar/floating/ShortcutLocationCalculator;

    iget-object v4, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutViewList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mAppShortcutCenterPos:[I

    aget v5, v5, v0

    iget-object v6, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mAppShortcutCenterPos:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {v3, v1, v4, v5, v6}, Lcom/android/systemui/statusbar/floating/ShortcutLocationCalculator;->getShortcutLocation(IIII)Landroid/graphics/Point;

    move-result-object v3

    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v5, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v4, v5}, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->hideView(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isExpandedByFloatingShortcut()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mIsExpanded:Z

    return v0
.end method

.method isTouchedAppIcon(II)Z
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mAppShortcutIcon:Lcom/android/systemui/widget/SystemUIImageView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->TAG:Ljava/lang/String;

    const-string v2, "isTouchedAppIcon() mAppShortcutIcon is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mAppShortcutIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0}, Lcom/android/systemui/widget/SystemUIImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mAppShortcutIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v3}, Lcom/android/systemui/widget/SystemUIImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v2, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mAppShortcutCenterPos:[I

    aget v3, v3, v1

    sub-int/2addr v3, v0

    const/4 v4, 0x1

    if-ge v3, p1, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mAppShortcutCenterPos:[I

    aget v3, v3, v1

    add-int/2addr v3, v0

    if-ge p1, v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mAppShortcutCenterPos:[I

    aget v3, v3, v4

    sub-int/2addr v3, v2

    if-ge v3, p2, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mAppShortcutCenterPos:[I

    aget v3, v3, v4

    add-int/2addr v3, v2

    if-ge p2, v3, :cond_1

    move v1, v4

    nop

    :cond_1
    return v1
.end method

.method launchFocusedApp(Lcom/android/systemui/statusbar/floating/FloatingShortcutView;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-object v1, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->TAG:Ljava/lang/String;

    const-string v2, "launchFocusedApp() return - focused app is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->TAG:Ljava/lang/String;

    const-string v2, "launchFocusedApp() return - mStatusBar is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->getLaunchIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v2, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->TAG:Ljava/lang/String;

    const-string v3, "launchFocusedApp() return - launchIntent is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launchFocusedApp() intent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mLaunchInterface = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mLaunchInterface:Lcom/android/systemui/statusbar/phone/KeyguardLaunchInterface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->setFloatingShortcutLaunching(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mLaunchInterface:Lcom/android/systemui/statusbar/phone/KeyguardLaunchInterface;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/util/ShortcutManager;->isSamsungCameraPackage(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->TAG:Ljava/lang/String;

    const-string v3, "launchFocusedApp() launch camera"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mLaunchInterface:Lcom/android/systemui/statusbar/phone/KeyguardLaunchInterface;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardLaunchInterface;->launchCamera()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mLaunchInterface:Lcom/android/systemui/statusbar/phone/KeyguardLaunchInterface;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/util/ShortcutManager;->isSamsungPhonePackage(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->TAG:Ljava/lang/String;

    const-string v3, "launchFocusedApp() launch phone"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mLaunchInterface:Lcom/android/systemui/statusbar/phone/KeyguardLaunchInterface;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardLaunchInterface;->launchPhone()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v3, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mActivityStarterCallback:Lcom/android/systemui/plugins/ActivityStarter$Callback;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivity(Landroid/content/Intent;ZLcom/android/systemui/plugins/ActivityStarter$Callback;)V

    :goto_0
    return v2
.end method

.method protected onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    const-class v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object v1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mScreeLifeCycleObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/ScreenLifecycle;->addObserver(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutCallback:Lcom/android/systemui/util/ShortcutManager$ShortcutCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/ShortcutManager;->registerCallback(Lcom/android/systemui/util/ShortcutManager$ShortcutCallback;)V

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/net/Uri;

    const-string v3, "lock_shortcut_type"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "emergency_mode"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string/jumbo v3, "ultra_powersaving_mode"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->updateEnableState()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/Rune;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mRotationListener:Lcom/android/keyguard/biometric/KeyguardBiometricRotationListener;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;->addListener(Lcom/android/keyguard/biometric/KeyguardBiometricRotationListener;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    const-class v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object v1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mScreeLifeCycleObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/ScreenLifecycle;->removeObserver(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutManager:Lcom/android/systemui/util/ShortcutManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutCallback:Lcom/android/systemui/util/ShortcutManager$ShortcutCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/ShortcutManager;->unregisterCallback(Lcom/android/systemui/util/ShortcutManager$ShortcutCallback;)V

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/Rune;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mRotationListener:Lcom/android/keyguard/biometric/KeyguardBiometricRotationListener;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometric/KeyguardBiometricRotationManager;->removeListener(Lcom/android/keyguard/biometric/KeyguardBiometricRotationListener;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mPm:Landroid/os/PowerManager;

    new-instance v0, Lcom/android/systemui/statusbar/floating/DisabledShortcutState;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/floating/DisabledShortcutState;-><init>(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutState:Lcom/android/systemui/statusbar/floating/ShortcutState;

    const v0, 0x7f0a01c3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutLayer:Landroid/widget/FrameLayout;

    const v0, 0x7f0a01b9

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUIImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mAppShortcutIcon:Lcom/android/systemui/widget/SystemUIImageView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mAppShortcutIcon:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mAppShortcutIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0}, Lcom/android/systemui/widget/SystemUIImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/floating/-$$Lambda$FloatingShortcutAreaView$wz2pXIABDIWgZM_b7S5xjOT-mok;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/floating/-$$Lambda$FloatingShortcutAreaView$wz2pXIABDIWgZM_b7S5xjOT-mok;-><init>(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    const v0, 0x7f0a01ba

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mEffectLayer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mEffectPlayer:Lcom/android/systemui/statusbar/floating/EffectPlayer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mEffectLayer:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/floating/EffectPlayer;->setEffectLayer(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutState:Lcom/android/systemui/statusbar/floating/ShortcutState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/floating/ShortcutState;->isPressed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mDebugLogMonitor:Lcom/android/systemui/statusbar/DebugLogMonitor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutState:Lcom/android/systemui/statusbar/floating/ShortcutState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/floating/ShortcutState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->getAlpha()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/DebugLogMonitor;->addTouchDebugLogs(Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mDebugLogMonitor:Lcom/android/systemui/statusbar/DebugLogMonitor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mDebugLogMonitor:Lcom/android/systemui/statusbar/DebugLogMonitor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutState:Lcom/android/systemui/statusbar/floating/ShortcutState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/floating/ShortcutState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/DebugLogMonitor;->addTouchDebugLogs(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutState:Lcom/android/systemui/statusbar/floating/ShortcutState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/floating/ShortcutState;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->userActivity()V

    const/4 v0, 0x1

    return v0

    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method setForceExpandedByShortcut(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mIsExpanded:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setForceExpandedByShortcut(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->updateVisibility()V

    return-void
.end method

.method public setLaunchInterface(Lcom/android/systemui/statusbar/phone/KeyguardLaunchInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mLaunchInterface:Lcom/android/systemui/statusbar/phone/KeyguardLaunchInterface;

    return-void
.end method

.method setShortcutIconPressed(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setFloatingShortcutIconPressed(Z)V

    :cond_0
    return-void
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method

.method public setStatusBarState(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mStatusBarState:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->updateVisibility()V

    return-void
.end method

.method showAppIcon()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mAppShortcutIcon:Lcom/android/systemui/widget/SystemUIImageView;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showAppIcon() mAppShortcutIcon is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mAppShortcutIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0}, Lcom/android/systemui/widget/SystemUIImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3f333333    # 0.7f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method showShortcut()V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutLocationCalculator:Lcom/android/systemui/statusbar/floating/ShortcutLocationCalculator;

    iget-object v4, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mShortcutViewList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mAppShortcutCenterPos:[I

    aget v5, v5, v0

    iget-object v6, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mAppShortcutCenterPos:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {v3, v1, v4, v5, v6}, Lcom/android/systemui/statusbar/floating/ShortcutLocationCalculator;->getShortcutLocation(IIII)Landroid/graphics/Point;

    move-result-object v3

    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v5, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v4, v5}, Lcom/android/systemui/statusbar/floating/FloatingShortcutView;->showView(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method updateBlurAndDim(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateBlueAndDimByShortcut(Z)V

    :cond_0
    return-void
.end method
