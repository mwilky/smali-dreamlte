.class public abstract Lcom/android/systemui/infinity/GLWallpaperService;
.super Landroid/service/wallpaper/WallpaperService;
.source "GLWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/infinity/GLWallpaperService$GLEngine;
    }
.end annotation


# static fields
.field private static final SETTINGS_SUPPORT_AOD_INFINITY:Ljava/lang/String; = "support_aod_infinity"


# instance fields
.field protected engine:Lcom/android/systemui/infinity/GLWallpaperService$GLEngine;

.field tracker:Lcom/android/systemui/infinity/util/VelocityTracker;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onCreate()V

    invoke-static {}, Lcom/android/systemui/infinity/util/VelocityTracker;->getInstance()Lcom/android/systemui/infinity/util/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/GLWallpaperService;->tracker:Lcom/android/systemui/infinity/util/VelocityTracker;

    invoke-virtual {p0}, Lcom/android/systemui/infinity/GLWallpaperService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "support_aod_infinity"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 1

    new-instance v0, Lcom/android/systemui/infinity/GLWallpaperService$GLEngine;

    invoke-direct {v0, p0}, Lcom/android/systemui/infinity/GLWallpaperService$GLEngine;-><init>(Lcom/android/systemui/infinity/GLWallpaperService;)V

    iput-object v0, p0, Lcom/android/systemui/infinity/GLWallpaperService;->engine:Lcom/android/systemui/infinity/GLWallpaperService$GLEngine;

    iget-object v0, p0, Lcom/android/systemui/infinity/GLWallpaperService;->engine:Lcom/android/systemui/infinity/GLWallpaperService$GLEngine;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onDestroy()V

    return-void
.end method
