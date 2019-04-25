.class public Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;
.super Landroid/widget/FrameLayout;
.source "LockscreenOverlayView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LSO_LockscreenOverlayView"


# instance fields
.field private handler:Landroid/os/Handler;

.field private final lso:Lcom/samsung/android/knox/lockscreen/LSOInterface;

.field private final mContext:Landroid/content/Context;

.field private final mNotifier:Landroid/content/BroadcastReceiver;

.field private final mParentDimension:Landroid/graphics/Point;

.field private final mViewDimension:Landroid/graphics/Point;

.field private registered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView$1;-><init>(Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;)V

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView$2;-><init>(Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;)V

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mNotifier:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mParentDimension:Landroid/graphics/Point;

    invoke-direct {p0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->calculateDeviceDimension()V

    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mParentDimension:Landroid/graphics/Point;

    invoke-direct {v0, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mViewDimension:Landroid/graphics/Point;

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-static {v0, p1}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->getInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/lockscreen/LSOInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->lso:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->lso:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    if-nez v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->setVisibility(I)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->registered:Z

    invoke-direct {p0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->setLayout()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->setLayout()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private allowToBeVisible()Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mViewDimension:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-double v0, v0

    iget-object v2, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mParentDimension:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-double v2, v2

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mViewDimension:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-double v0, v0

    iget-object v2, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mParentDimension:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-double v2, v2

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v0, "LSO_LockscreenOverlayView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Screen Size("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mParentDimension:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mParentDimension:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")  : View Size("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mViewDimension:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mViewDimension:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "LSO_LockscreenOverlayView"

    const-string v1, "LSOInterface View cannot be displayed as view size is not enough."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private calculateDeviceDimension()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mParentDimension:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    return-void
.end method

.method private declared-synchronized registerLSONotification()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->registered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->setLayout()Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.knox.intent.action.LSO_CONFIG_CHANGED_INTERNAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mNotifier:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->registered:Z

    const-string v1, "LSO_LockscreenOverlayView"

    const-string v2, "Registered for Intent: android.intent.action.MEDIA_MOUNTED , com.samsung.android.knox.intent.action.LSO_CONFIG_CHANGED_INTERNAL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setLayout(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/samsung/android/knox/lockscreen/LSOContainerView;

    iget-object v2, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mContext:Landroid/content/Context;

    move-object v3, p1

    check-cast v3, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/knox/lockscreen/LSOContainerView;-><init>(Landroid/content/Context;Lcom/samsung/android/knox/lockscreen/LSOItemContainer;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "LSO_LockscreenOverlayView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setLayout() Error while creating views: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method private setLayout()Z
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->removeAllViews()V

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v2, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->lso:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    invoke-virtual {v2}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->getPreferences()Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "android:alpha"

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "android:alpha"

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->getAsFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v3, "android:alpha"

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->getAsFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_1
    const/4 v5, 0x3

    if-gt v4, v5, :cond_5

    iget-object v6, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->lso:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    invoke-virtual {v6, v4}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->getData(I)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    invoke-direct {p0, v6}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->setLayout(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_3

    if-eq v4, v5, :cond_4

    invoke-virtual {v7, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_6

    const-string v4, "LSO_LockscreenOverlayView"

    const-string v5, "No Lockscreen Overlay data found."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    return v4

    :cond_6
    return v0
.end method

.method private declared-synchronized unregisterLSONotification()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->registered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mNotifier:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->registered:Z

    const-string v0, "LSO_LockscreenOverlayView"

    const-string v1, "Unregistered for Intent: android.intent.action.MEDIA_MOUNTED , com.samsung.android.knox.intent.action.LSO_CONFIG_CHANGED_INTERNAL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->registerLSONotification()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->unregisterLSONotification()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    invoke-direct {p0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->calculateDeviceDimension()V

    const-string v0, "LSO_LockscreenOverlayView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Size Changed("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mParentDimension:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mParentDimension:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")  : From("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")  To("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mViewDimension:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->mViewDimension:Landroid/graphics/Point;

    iput p2, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->allowToBeVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->allowToBeVisible()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->setVisibility(I)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setVisibility(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->getVisibility()I

    move-result v0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->allowToBeVisible()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->allowToBeVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x0

    :cond_1
    :goto_0
    if-ne v0, p1, :cond_2

    return-void

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
