.class Lcom/android/server/display/MagnifierSurfaceControl$Border;
.super Ljava/lang/Object;
.source "MagnifierSurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/MagnifierSurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Border"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Magnifier.Border"


# instance fields
.field private final DEBUG:Z

.field private mBorderFxSession:Landroid/view/SurfaceSession;

.field final mBorderLock:Ljava/lang/Object;

.field private mBorderSurface:Landroid/view/Surface;

.field private mBorderSurfaceControl:Landroid/view/SurfaceControl;

.field private mContext:Landroid/content/Context;

.field private mDrawableBorder:Landroid/graphics/drawable/Drawable;

.field private mPadding:Landroid/graphics/Rect;

.field private mShowing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->DEBUG:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mShowing:Z

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mPadding:Landroid/graphics/Rect;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderLock:Ljava/lang/Object;

    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2}, Landroid/view/Surface;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurface:Landroid/view/Surface;

    new-instance v2, Landroid/view/SurfaceSession;

    invoke-direct {v2}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderFxSession:Landroid/view/SurfaceSession;

    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    iput-object p1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mContext:Landroid/content/Context;

    if-lt p3, v0, :cond_0

    if-ge p4, v0, :cond_2

    :cond_0
    :try_start_0
    const-string v2, "Magnifier.Border"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "invalid width="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " height="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-ge p3, v0, :cond_1

    const/4 p3, 0x1

    :cond_1
    if-ge p4, v0, :cond_2

    const/4 p4, 0x1

    :cond_2
    new-instance v0, Landroid/view/SurfaceControl$Builder;

    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderFxSession:Landroid/view/SurfaceSession;

    invoke-direct {v0, v2}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    const-string v2, "OverlayMagnifierBorder"

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Landroid/view/SurfaceControl$Builder;->setSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const v2, -0x7ffffffc

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setFlags(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p2}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurface:Landroid/view/Surface;

    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    const v2, 0x1e847f

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl;->setLayer(I)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Landroid/view/Surface$OutOfResourcesException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    nop

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1080634

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableBorder:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void

    :goto_1
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/server/display/MagnifierDisplayPolicy;)V
    .locals 2

    invoke-virtual {p3}, Lcom/android/server/display/MagnifierDisplayPolicy;->getWidth()I

    move-result v0

    invoke-virtual {p3}, Lcom/android/server/display/MagnifierDisplayPolicy;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/display/MagnifierSurfaceControl$Border;-><init>(Landroid/content/Context;III)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    const-string v0, "Magnifier.Border"

    const-string/jumbo v1, "dismiss"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurface:Landroid/view/Surface;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->destroy()V

    iput-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurface:Landroid/view/Surface;

    :cond_0
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->destroy()V

    iput-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    nop

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public getPadding()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mPadding:Landroid/graphics/Rect;

    return-object v0
.end method

.method public hide()V
    .locals 3

    const-string v0, "Magnifier.Border"

    const-string/jumbo v1, "hide"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mShowing:Z

    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->hide()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    nop

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public setPosition(Landroid/graphics/Point;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public show()V
    .locals 4

    const-string v0, "Magnifier.Border"

    const-string/jumbo v1, "show"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mShowing:Z

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurface:Landroid/view/Surface;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurface:Landroid/view/Surface;

    invoke-virtual {v2, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    nop

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v2

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
