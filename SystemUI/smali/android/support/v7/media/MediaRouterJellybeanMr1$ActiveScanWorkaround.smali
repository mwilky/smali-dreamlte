.class public final Landroid/support/v7/media/MediaRouterJellybeanMr1$ActiveScanWorkaround;
.super Ljava/lang/Object;
.source "MediaRouterJellybeanMr1.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/MediaRouterJellybeanMr1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActiveScanWorkaround"
.end annotation


# instance fields
.field private mActivelyScanningWifiDisplays:Z

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mHandler:Landroid/os/Handler;

.field private mScanWifiDisplaysMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Landroid/support/v7/media/MediaRouterJellybeanMr1$ActiveScanWorkaround;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iput-object p2, p0, Landroid/support/v7/media/MediaRouterJellybeanMr1$ActiveScanWorkaround;->mHandler:Landroid/os/Handler;

    :try_start_0
    const-class v0, Landroid/hardware/display/DisplayManager;

    const-string/jumbo v1, "scanWifiDisplays"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/MediaRouterJellybeanMr1$ActiveScanWorkaround;->mScanWifiDisplaysMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-boolean v0, p0, Landroid/support/v7/media/MediaRouterJellybeanMr1$ActiveScanWorkaround;->mActivelyScanningWifiDisplays:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/support/v7/media/MediaRouterJellybeanMr1$ActiveScanWorkaround;->mScanWifiDisplaysMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroid/support/v7/media/MediaRouterJellybeanMr1$ActiveScanWorkaround;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaRouterJellybeanMr1"

    const-string v2, "Cannot scan for wifi displays."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "MediaRouterJellybeanMr1"

    const-string v2, "Cannot scan for wifi displays."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    nop

    :goto_1
    iget-object v0, p0, Landroid/support/v7/media/MediaRouterJellybeanMr1$ActiveScanWorkaround;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3a98

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public setActiveScanRouteTypes(I)V
    .locals 2

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v7/media/MediaRouterJellybeanMr1$ActiveScanWorkaround;->mActivelyScanningWifiDisplays:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/media/MediaRouterJellybeanMr1$ActiveScanWorkaround;->mScanWifiDisplaysMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/media/MediaRouterJellybeanMr1$ActiveScanWorkaround;->mActivelyScanningWifiDisplays:Z

    iget-object v0, p0, Landroid/support/v7/media/MediaRouterJellybeanMr1$ActiveScanWorkaround;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const-string v0, "MediaRouterJellybeanMr1"

    const-string v1, "Cannot scan for wifi displays because the DisplayManager.scanWifiDisplays() method is not available on this device."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/media/MediaRouterJellybeanMr1$ActiveScanWorkaround;->mActivelyScanningWifiDisplays:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/media/MediaRouterJellybeanMr1$ActiveScanWorkaround;->mActivelyScanningWifiDisplays:Z

    iget-object v0, p0, Landroid/support/v7/media/MediaRouterJellybeanMr1$ActiveScanWorkaround;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method
