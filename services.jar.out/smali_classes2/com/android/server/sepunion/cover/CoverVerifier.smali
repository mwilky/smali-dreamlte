.class final Lcom/android/server/sepunion/cover/CoverVerifier;
.super Ljava/lang/Object;
.source "CoverVerifier.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultClearCoverHeight:I

.field private mDefaultClearCoverWidth:I

.field private mDefaultCoverColor:I

.field private mDefaultCoverModel:I

.field private mDefaultMiniSViewCoverHeight:I

.field private mDefaultMiniSViewCoverWidth:I

.field private mDefaultSViewCoverHeight:I

.field private mDefaultSViewCoverWidth:I

.field private mIsCoverAttached:Z

.field private mIsCoverVerified:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoverManager_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/sepunion/cover/CoverVerifier;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/cover/CoverVerifier;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultCoverColor:I

    iput v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultCoverModel:I

    iput v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultSViewCoverWidth:I

    iput v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultSViewCoverHeight:I

    iput v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultMiniSViewCoverWidth:I

    iput v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultMiniSViewCoverHeight:I

    iput v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultClearCoverWidth:I

    iput v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultClearCoverHeight:I

    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverVerifier;->initializeDefaultCoverState()V

    return-void
.end method

.method private getDefaultTypeOfCover()I
    .locals 6

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/Feature;->isSupportVerifyCover()Z

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0xb

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/Feature;->isSupportSViewCover()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->getTestCoverType()I

    move-result v0

    if-ne v0, v5, :cond_0

    return v5

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/Feature;->isSupportFlipCover()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->getTestCoverType()I

    move-result v0

    if-nez v0, :cond_1

    return v4

    :cond_1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/Feature;->isSupportClearCover()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->getTestCoverType()I

    move-result v0

    if-ne v0, v3, :cond_2

    return v3

    :cond_2
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/Feature;->isSupportSmartCover()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->getTestCoverType()I

    move-result v0

    const/16 v3, 0xff

    if-ne v0, v3, :cond_3

    return v3

    :cond_3
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/Feature;->isSupportNeonCover()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->getTestCoverType()I

    move-result v0

    if-ne v0, v2, :cond_4

    return v2

    :cond_4
    return v1

    :cond_5
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/Feature;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/Feature;->isSupportFlipCover()Z

    move-result v0

    if-eqz v0, :cond_a

    return v4

    :cond_6
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/Feature;->isSupportSViewCover()Z

    move-result v0

    if-eqz v0, :cond_7

    return v5

    :cond_7
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/Feature;->isSupportFlipCover()Z

    move-result v0

    if-eqz v0, :cond_8

    return v4

    :cond_8
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/Feature;->isSupportClearCover()Z

    move-result v0

    if-eqz v0, :cond_9

    return v3

    :cond_9
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/Feature;->isSupportNeonCover()Z

    move-result v0

    if-eqz v0, :cond_a

    return v2

    :cond_a
    return v1
.end method

.method private getScreenSizeForClearCover()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    iget v4, v2, Landroid/graphics/Point;->x:I

    iput v4, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultClearCoverWidth:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    iput v4, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultClearCoverHeight:I

    goto :goto_0

    :pswitch_0
    iget v4, v2, Landroid/graphics/Point;->y:I

    iput v4, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultClearCoverWidth:I

    iget v4, v2, Landroid/graphics/Point;->x:I

    iput v4, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultClearCoverHeight:I

    goto :goto_0

    :pswitch_1
    iget v4, v2, Landroid/graphics/Point;->x:I

    iput v4, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultClearCoverWidth:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    iput v4, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultClearCoverHeight:I

    nop

    :goto_0
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getSupportSViewCoverHeight(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultClearCoverHeight:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultMiniSViewCoverHeight:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultSViewCoverHeight:I

    nop

    :goto_0
    nop

    return v0
.end method

.method private getSupportSViewCoverWidth(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultClearCoverWidth:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultMiniSViewCoverWidth:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultSViewCoverWidth:I

    nop

    :goto_0
    nop

    return v0
.end method

.method private static isFactoryMode()Z
    .locals 2

    const-string/jumbo v0, "ro.factory.factory_binary"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "factory"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string v0, " Current CoverVerifier state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mIsCoverVerified="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, "  mIsCoverAttached="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mDefaultCoverType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/sepunion/cover/CoverVerifier;->getDefaultTypeOfCover()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "  mDefaultCoverColor="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultCoverColor:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mDefaultSViewCoverWidth="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultSViewCoverWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "  mDefaultSViewCoverHeight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultSViewCoverHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "  mDefaultMiniSViewCoverWidth="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultMiniSViewCoverWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "  mDefaultMiniSViewCoverHeight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultMiniSViewCoverHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method initializeDefaultCoverState()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x1050221

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultSViewCoverWidth:I

    const v1, 0x1050220

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultSViewCoverHeight:I

    invoke-direct {p0}, Lcom/android/server/sepunion/cover/CoverVerifier;->getScreenSizeForClearCover()V

    :cond_0
    return-void
.end method

.method isCoverAttached()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    return v0
.end method

.method isCoverVerified()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    return v0
.end method

.method isCoverVerifiedAndAttached()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method updateCoverAttachState(Z)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/sepunion/cover/Feature;->isNfcAuthEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    if-eq v1, p1, :cond_4

    iput-boolean p1, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/sepunion/cover/Feature;->isSupportVerifyCover()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->isTestMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    if-nez v1, :cond_4

    iput-boolean v2, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    if-eq v1, p1, :cond_4

    iput-boolean p1, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    sget-boolean v1, Lcom/samsung/android/sepunion/Log;->IS_DEV:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/server/sepunion/cover/CoverVerifier;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateCoverAttachState : This device is not support cover attach"

    invoke-static {v1, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-boolean v1, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    if-nez v1, :cond_4

    iput-boolean v2, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    const/4 v0, 0x1

    :cond_4
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    iput-boolean v1, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    sget-object v1, Lcom/android/server/sepunion/cover/CoverVerifier;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCoverAttachState : mIsCoverVerified ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", attached="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", change="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method updateCoverPropertiesLocked(Lcom/samsung/android/cover/CoverState;Lcom/samsung/android/cover/CoverState;)V
    .locals 12

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/Feature;->isNfcAuthEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez p2, :cond_3

    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->isTestMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->getTestCoverType()I

    move-result v0

    iget v8, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultCoverColor:I

    iget v9, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultCoverModel:I

    invoke-direct {p0, v0}, Lcom/android/server/sepunion/cover/CoverVerifier;->getSupportSViewCoverWidth(I)I

    move-result v10

    invoke-direct {p0, v0}, Lcom/android/server/sepunion/cover/CoverVerifier;->getSupportSViewCoverHeight(I)I

    move-result v11

    invoke-static {}, Lcom/android/server/sepunion/cover/CoverVerifier;->isFactoryMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v6, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    move-object v1, p1

    move v2, v0

    move v3, v8

    move v4, v10

    move v5, v11

    move v7, v9

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/cover/CoverState;->updateCoverState(IIIIZI)V

    :cond_0
    sget-object v1, Lcom/android/server/sepunion/cover/CoverVerifier;->TAG:Ljava/lang/String;

    const-string v2, "[SmartCover] CoverVerify : sview cover test mode enabled"

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/samsung/android/sepunion/Log;->IS_DEV:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/sepunion/cover/CoverVerifier;->TAG:Ljava/lang/String;

    const-string v1, "[SmartCover] CoverVerify : updateCoverPropertiesLocked : srcCoverState is null"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverVerifier;->isFactoryMode()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p1, p2}, Lcom/samsung/android/cover/CoverState;->copyFrom(Lcom/samsung/android/cover/CoverState;)V

    iget v0, p1, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    invoke-direct {p0}, Lcom/android/server/sepunion/cover/CoverVerifier;->getScreenSizeForClearCover()V

    :cond_4
    const/16 v1, 0xff

    if-eq v0, v1, :cond_5

    invoke-direct {p0, v0}, Lcom/android/server/sepunion/cover/CoverVerifier;->getSupportSViewCoverWidth(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/cover/CoverState;->setWindowWidth(I)V

    invoke-direct {p0, v0}, Lcom/android/server/sepunion/cover/CoverVerifier;->getSupportSViewCoverHeight(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/cover/CoverState;->setWindowHeight(I)V

    :cond_5
    sget-boolean v1, Lcom/samsung/android/sepunion/Log;->IS_DEV:Z

    if-eqz v1, :cond_9

    sget-object v1, Lcom/android/server/sepunion/cover/CoverVerifier;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SmartCover] CoverVerify : updateCoverPropertiesLocked : type ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", color="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", app Uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSmartCoverAppUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", widthPixel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getWindowWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", heightPixel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getWindowHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_6
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->isTestMode()Z

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    if-eqz v0, :cond_7

    const-string v0, "/sys/devices/w1_bus_master1/w1_master_check_id"

    invoke-direct {p0}, Lcom/android/server/sepunion/cover/CoverVerifier;->getDefaultTypeOfCover()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->getValueFromSysFS(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "/sys/devices/w1_bus_master1/w1_master_check_color"

    iget v2, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultCoverColor:I

    invoke-static {v1, v2}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->getValueFromSysFS(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "/sys/bus/w1/devices/w1_bus_master1/w1_master_check_model"

    iget v3, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultCoverModel:I

    invoke-static {v2, v3}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->getValueFromSysFS(Ljava/lang/String;I)I

    move-result v2

    goto :goto_1

    :cond_7
    invoke-direct {p0}, Lcom/android/server/sepunion/cover/CoverVerifier;->getDefaultTypeOfCover()I

    move-result v0

    iget v1, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultCoverColor:I

    iget v2, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultCoverModel:I

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/server/sepunion/cover/CoverVerifier;->getSupportSViewCoverWidth(I)I

    move-result v10

    invoke-direct {p0, v0}, Lcom/android/server/sepunion/cover/CoverVerifier;->getSupportSViewCoverHeight(I)I

    move-result v11

    invoke-static {}, Lcom/android/server/sepunion/cover/CoverVerifier;->isFactoryMode()Z

    move-result v3

    if-nez v3, :cond_8

    iget-boolean v8, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    move-object v3, p1

    move v4, v0

    move v5, v1

    move v6, v10

    move v7, v11

    move v9, v2

    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/cover/CoverState;->updateCoverState(IIIIZI)V

    :cond_8
    sget-boolean v3, Lcom/samsung/android/sepunion/Log;->IS_DEV:Z

    if-eqz v3, :cond_9

    sget-object v3, Lcom/android/server/sepunion/cover/CoverVerifier;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateCoverPropertiesLocked : mIsCoverAttached ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", color="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", model="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_2
    return-void
.end method

.method updateCoverVerification()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/sepunion/cover/Feature;->isNfcAuthEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    if-nez v1, :cond_6

    iput-boolean v2, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/sepunion/cover/Feature;->isSupportVerifyCover()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->isTestMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    if-nez v1, :cond_6

    iput-boolean v2, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "/sys/devices/w1_bus_master1/w1_master_verify_mac"

    const/4 v3, -0x1

    invoke-static {v1, v3}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->getValueFromSysFS(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    move v1, v2

    iget-boolean v2, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    if-eq v2, v1, :cond_3

    iput-boolean v1, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    const/4 v0, 0x1

    :cond_3
    goto :goto_1

    :cond_4
    sget-boolean v1, Lcom/samsung/android/sepunion/Log;->IS_DEV:Z

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/server/sepunion/cover/CoverVerifier;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateCoverVerification : This device is not support cover verify"

    invoke-static {v1, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-boolean v1, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    if-nez v1, :cond_6

    iput-boolean v2, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    const/4 v0, 0x1

    :cond_6
    :goto_1
    iget-boolean v1, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    iput-boolean v1, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    sget-object v1, Lcom/android/server/sepunion/cover/CoverVerifier;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCoverVerification : mIsCoverVerified ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", change="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method updateCoverWindowSize(Lcom/samsung/android/cover/CoverState;)V
    .locals 5

    if-nez p1, :cond_0

    sget-object v0, Lcom/android/server/sepunion/cover/CoverVerifier;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateCoverWindowSize(): CoverState is null"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/sepunion/cover/CoverVerifier;->getSupportSViewCoverHeight(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/sepunion/cover/CoverVerifier;->getSupportSViewCoverWidth(I)I

    move-result v1

    sget-object v2, Lcom/android/server/sepunion/cover/CoverVerifier;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateCoverWindowSize(): old window = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " new window = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v1}, Lcom/samsung/android/cover/CoverState;->setWindowWidth(I)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/cover/CoverState;->setWindowHeight(I)V

    return-void
.end method
