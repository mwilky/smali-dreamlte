.class Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;
.super Landroid/widget/FrameLayout;
.source "ImmersiveModeConfirmation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/ImmersiveModeConfirmation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClingWindowView"
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0xfa

.field private static final ANIM_DURATION_ALPHA_IN:I = 0xc8

.field private static final ANIM_DURATION_ALPHA_OUT:I = 0x12c

.field private static final ANIM_DURATION_TRANSLATE:I = 0x258

.field private static final ANIM_IMAGE_VIEW_PAUSE_TIME:I = 0x3e8

.field private static final ANIM_START_OFFSET:I = 0xc8

.field private static final BGCOLOR:I = -0x80000000

.field private static final MAX_FONT_SCALE:F = 1.25f

.field private static final OFFSET_DP:I = 0x60

.field private static final STEP_ONE_TRANSIENT_BAR:I = 0x0

.field private static final STEP_TWO_FORCE_TOUCH:I = 0x1


# instance fields
.field private final SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

.field private final SINE_IN_OUT_60:Landroid/view/animation/Interpolator;

.field private mButtonNextLand:Landroid/widget/Button;

.field private mButtonNextPort:Landroid/widget/Button;

.field private mButtonOkLand:Landroid/widget/Button;

.field private mButtonOkPort:Landroid/widget/Button;

.field private mClingHandler:Landroid/os/Handler;

.field private mClingLayout:Landroid/view/ViewGroup;

.field private final mColor:Landroid/graphics/drawable/ColorDrawable;

.field private mColorAnim:Landroid/animation/ValueAnimator;

.field private final mConfirm:Ljava/lang/Runnable;

.field private mCurrentStep:I

.field private mImageArrow0:Landroid/widget/ImageView;

.field private mImageArrow270:Landroid/widget/ImageView;

.field private mImageArrow90:Landroid/widget/ImageView;

.field private mImageCircle270:Landroid/widget/ImageView;

.field private mImageCircle90:Landroid/widget/ImageView;

.field private mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mLayoutStepOneLand:Landroid/widget/LinearLayout;

.field private mLayoutStepOnePort:Landroid/widget/LinearLayout;

.field private mLayoutStepTwoLand:Landroid/widget/LinearLayout;

.field private mLayoutStepTwoPort:Landroid/widget/LinearLayout;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRotation:I

.field private mRotationWatcher:Landroid/view/IRotationWatcher;

.field public mShowNextButton:Z

.field private mTextStepOneLand:Landroid/widget/TextView;

.field private mTextStepOnePort:Landroid/widget/TextView;

.field private mTextStepTwoLand:Landroid/widget/TextView;

.field private mTextStepTwoPort:Landroid/widget/TextView;

.field private mUpdateLayoutRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/ImmersiveModeConfirmation;Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 6

    iput-object p1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    new-instance v0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$1;-><init>(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)V

    iput-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mUpdateLayoutRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$2;-><init>(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)V

    iput-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    new-instance v0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$3;

    invoke-direct {v0, p0}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$3;-><init>(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)V

    iput-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const/4 v3, 0x0

    const v4, 0x3f2b851f    # 0.67f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e2e147b    # 0.17f

    const v3, 0x3ecccccd    # 0.4f

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v2, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->SINE_IN_OUT_60:Landroid/view/animation/Interpolator;

    iput v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mCurrentStep:I

    iput-boolean v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mShowNextButton:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mClingHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$4;

    invoke-direct {v0, p0}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$4;-><init>(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)V

    iput-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mRotationWatcher:Landroid/view/IRotationWatcher;

    iput-object p3, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mConfirm:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0, v0}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->setImportantForAccessibility(I)V

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mContext:Landroid/content/Context;

    const v2, 0x10c000e

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mInterpolator:Landroid/view/animation/Interpolator;

    sget-boolean v0, Lcom/android/server/policy/SamsungWindowManagerPolicy;->IS_TABLET_DEVICE:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/server/policy/ImmersiveModeConfirmation;->access$900(Lcom/android/server/policy/ImmersiveModeConfirmation;)Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result v1

    :goto_0
    iput v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mRotation:I

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mColorAnim:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mColorAnim:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)Landroid/graphics/drawable/ColorDrawable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mClingHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mUpdateLayoutRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mRotation:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mRotation:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->updateLayout()V

    return-void
.end method

.method private handleNextButton()V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_NAVBAR_FORCE_TOUCH:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mCurrentStep:I

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mClingHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/-$$Lambda$ImmersiveModeConfirmation$ClingWindowView$Y166NnA86taesH072V6Bqc7xJkc;

    invoke-direct {v1, p0}, Lcom/android/server/policy/-$$Lambda$ImmersiveModeConfirmation$ClingWindowView$Y166NnA86taesH072V6Bqc7xJkc;-><init>(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mConfirm:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$handleNextButton$0(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->updateLayout()V

    return-void
.end method

.method public static synthetic lambda$onAttachedToWindow$1(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->handleNextButton()V

    return-void
.end method

.method public static synthetic lambda$onAttachedToWindow$2(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->handleNextButton()V

    return-void
.end method

.method public static synthetic lambda$onAttachedToWindow$3(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mConfirm:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic lambda$onAttachedToWindow$4(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mConfirm:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private startArrowAnimation(I)V
    .locals 8

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mImageArrow0:Landroid/widget/ImageView;

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mImageArrow90:Landroid/widget/ImageView;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mImageArrow270:Landroid/widget/ImageView;

    :goto_0
    if-nez v1, :cond_2

    return-void

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    iget-boolean v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mShowNextButton:Z

    if-eqz v2, :cond_3

    invoke-direct {p0, p1}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->startButtonAnimation(I)V

    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050240

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-eq p1, v4, :cond_4

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    int-to-float v6, v2

    invoke-direct {v4, v6, v5, v5, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    move-object v3, v4

    goto :goto_1

    :pswitch_1
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    int-to-float v6, v2

    invoke-direct {v4, v5, v5, v6, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    move-object v3, v4

    goto :goto_1

    :cond_4
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    neg-int v6, v2

    int-to-float v6, v6

    invoke-direct {v4, v6, v5, v5, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    move-object v3, v4

    :goto_1
    const-wide/16 v6, 0xc8

    invoke-virtual {v3, v6, v7}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    const-wide/16 v6, 0x258

    invoke-virtual {v3, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v4, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->SINE_IN_OUT_60:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v6, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v5, 0x708

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    const-wide/16 v5, 0x12c

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v5, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v5, Landroid/view/animation/AnimationSet;

    invoke-direct {v5, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object v0, v5

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v5, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$5;

    invoke-direct {v5, p0, v1, v0}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$5;-><init>(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;Landroid/view/View;Landroid/view/animation/AnimationSet;)V

    invoke-virtual {v0, v5}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private startButtonAnimation(I)V
    .locals 4

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mButtonNextPort:Landroid/widget/Button;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mButtonNextLand:Landroid/widget/Button;

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method private updateLayout()V
    .locals 11

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/policy/SamsungWindowManagerPolicy;->IS_TABLET_DEVICE:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mRotation:I

    :goto_0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    const-string v2, "ImmersiveModeConfirmation"

    const-string/jumbo v3, "updateLayout: do not support Surface.ROTATION_180"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mLayoutStepOnePort:Landroid/widget/LinearLayout;

    const/4 v4, 0x4

    if-nez v1, :cond_2

    iget v5, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mCurrentStep:I

    if-nez v5, :cond_2

    move v5, v2

    goto :goto_1

    :cond_2
    nop

    move v5, v4

    :goto_1
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mLayoutStepOneLand:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    iget v5, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mCurrentStep:I

    if-nez v5, :cond_3

    move v5, v2

    goto :goto_2

    :cond_3
    nop

    move v5, v4

    :goto_2
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mLayoutStepTwoPort:Landroid/widget/LinearLayout;

    const/4 v5, 0x1

    if-nez v1, :cond_4

    iget v6, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mCurrentStep:I

    if-ne v6, v5, :cond_4

    move v6, v2

    goto :goto_3

    :cond_4
    nop

    move v6, v4

    :goto_3
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mLayoutStepTwoLand:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_5

    iget v6, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mCurrentStep:I

    if-ne v6, v5, :cond_5

    move v6, v2

    goto :goto_4

    :cond_5
    nop

    move v6, v4

    :goto_4
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget v3, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mCurrentStep:I

    const/4 v6, 0x5

    const/4 v7, 0x3

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_c

    :pswitch_0
    const v3, 0x104093a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_6

    iget-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mTextStepTwoPort:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    :cond_6
    iget-object v8, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mTextStepTwoLand:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mLayoutStepTwoLand:Landroid/widget/LinearLayout;

    if-ne v1, v5, :cond_7

    goto :goto_5

    :cond_7
    move v6, v7

    :goto_5
    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v6, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mImageCircle90:Landroid/widget/ImageView;

    if-ne v1, v5, :cond_8

    move v5, v2

    goto :goto_6

    :cond_8
    move v5, v4

    :goto_6
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mImageCircle270:Landroid/widget/ImageView;

    if-ne v1, v7, :cond_9

    goto :goto_7

    :cond_9
    move v2, v4

    :goto_7
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_c

    :pswitch_1
    const v2, 0x1040939

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_b

    sget-boolean v3, Lcom/android/server/policy/SamsungWindowManagerPolicy;->IS_TABLET_DEVICE:Z

    if-eqz v3, :cond_a

    const v3, 0x104093e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    :cond_a
    const v3, 0x104093d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_8
    iget-object v4, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mTextStepOnePort:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    :cond_b
    if-ne v1, v5, :cond_c

    const v3, 0x104093c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    :cond_c
    const v3, 0x104093b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_9
    iget-object v8, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mTextStepOneLand:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mLayoutStepOneLand:Landroid/widget/LinearLayout;

    if-ne v1, v5, :cond_d

    goto :goto_a

    :cond_d
    move v6, v7

    :goto_a
    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v5, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mImageArrow90:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mImageArrow270:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_b
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_NAVBAR_FORCE_TOUCH:Z

    if-nez v4, :cond_e

    iget-object v4, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mButtonNextPort:Landroid/widget/Button;

    const v5, 0x1040938

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mButtonNextLand:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_e
    invoke-direct {p0, v1}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->startArrowAnimation(I)V

    nop

    :goto_c
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateTextSize()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050246

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v2, 0x3fa00000    # 1.25f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    const/high16 v1, 0x3fa00000    # 1.25f

    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mTextStepOnePort:Landroid/widget/TextView;

    mul-float v3, v0, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mTextStepOneLand:Landroid/widget/TextView;

    mul-float v3, v0, v1

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mTextStepTwoPort:Landroid/widget/TextView;

    mul-float v3, v0, v1

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mTextStepTwoLand:Landroid/widget/TextView;

    mul-float v3, v0, v1

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mButtonNextPort:Landroid/widget/Button;

    mul-float v3, v0, v1

    invoke-virtual {v2, v4, v3}, Landroid/widget/Button;->setTextSize(IF)V

    iget-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mButtonNextLand:Landroid/widget/Button;

    mul-float v3, v0, v1

    invoke-virtual {v2, v4, v3}, Landroid/widget/Button;->setTextSize(IF)V

    iget-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mButtonOkPort:Landroid/widget/Button;

    mul-float v3, v0, v1

    invoke-virtual {v2, v4, v3}, Landroid/widget/Button;->setTextSize(IF)V

    iget-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mButtonOkLand:Landroid/widget/Button;

    mul-float v3, v0, v1

    invoke-virtual {v2, v4, v3}, Landroid/widget/Button;->setTextSize(IF)V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 6

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    invoke-static {v1}, Lcom/android/server/policy/ImmersiveModeConfirmation;->access$900(Lcom/android/server/policy/ImmersiveModeConfirmation;)Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p0}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    nop

    invoke-virtual {p0}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1090084

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v3, 0x1020336

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mLayoutStepOnePort:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v3, 0x1020334

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mLayoutStepOneLand:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v3, 0x1020337

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mLayoutStepTwoPort:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v3, 0x1020335

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mLayoutStepTwoLand:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v3, 0x102043c

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mTextStepOnePort:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v3, 0x102036e

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mTextStepOneLand:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v3, 0x102043d

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mTextStepTwoPort:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v3, 0x102036f

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mTextStepTwoLand:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v3, 0x102043e

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mButtonNextPort:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v3, 0x1020370

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mButtonNextLand:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v3, 0x102043f

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mButtonOkPort:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v3, 0x1020371

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mButtonOkLand:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v3, 0x102032a

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mImageArrow0:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v3, 0x102032c

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mImageArrow90:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v3, 0x102032b

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mImageArrow270:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v3, 0x102032f

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mImageCircle90:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v3, 0x102032e

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mImageCircle270:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mButtonNextPort:Landroid/widget/Button;

    new-instance v3, Lcom/android/server/policy/-$$Lambda$ImmersiveModeConfirmation$ClingWindowView$sWlcXG-Qr3Hswx-GduZyh7k9Oew;

    invoke-direct {v3, p0}, Lcom/android/server/policy/-$$Lambda$ImmersiveModeConfirmation$ClingWindowView$sWlcXG-Qr3Hswx-GduZyh7k9Oew;-><init>(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mButtonNextLand:Landroid/widget/Button;

    new-instance v3, Lcom/android/server/policy/-$$Lambda$ImmersiveModeConfirmation$ClingWindowView$cCmcWc8bebZLVdu1cFK6jO5uMzk;

    invoke-direct {v3, p0}, Lcom/android/server/policy/-$$Lambda$ImmersiveModeConfirmation$ClingWindowView$cCmcWc8bebZLVdu1cFK6jO5uMzk;-><init>(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mButtonOkPort:Landroid/widget/Button;

    new-instance v3, Lcom/android/server/policy/-$$Lambda$ImmersiveModeConfirmation$ClingWindowView$piNR4yqUKQ8HNaOSN3LXQHxhzNo;

    invoke-direct {v3, p0}, Lcom/android/server/policy/-$$Lambda$ImmersiveModeConfirmation$ClingWindowView$piNR4yqUKQ8HNaOSN3LXQHxhzNo;-><init>(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mButtonOkLand:Landroid/widget/Button;

    new-instance v3, Lcom/android/server/policy/-$$Lambda$ImmersiveModeConfirmation$ClingWindowView$s0auF58vxOQRj0SUKQVlbTSEcb4;

    invoke-direct {v3, p0}, Lcom/android/server/policy/-$$Lambda$ImmersiveModeConfirmation$ClingWindowView$s0auF58vxOQRj0SUKQVlbTSEcb4;-><init>(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->updateTextSize()V

    invoke-direct {p0}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->updateLayout()V

    sget-boolean v2, Lcom/android/server/policy/SamsungWindowManagerPolicy;->IS_TABLET_DEVICE:Z

    if-nez v2, :cond_0

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mRotationWatcher:Landroid/view/IRotationWatcher;

    iget-object v4, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    invoke-virtual {v3}, Lcom/android/server/policy/ImmersiveModeConfirmation;->getBubbleLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    const/high16 v3, -0x3d400000    # -96.0f

    mul-float/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    new-instance v3, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$7;

    invoke-direct {v3, p0, v2}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView$7;-><init>(Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;Landroid/view/View;)V

    invoke-virtual {p0, v3}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    const/high16 v3, -0x80000000

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    :goto_1
    iget-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-boolean v0, Lcom/android/server/policy/SamsungWindowManagerPolicy;->IS_TABLET_DEVICE:Z

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->mRotationWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
