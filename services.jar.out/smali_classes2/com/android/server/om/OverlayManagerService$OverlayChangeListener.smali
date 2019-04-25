.class final Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;
.super Ljava/lang/Object;
.source "OverlayManagerService.java"

# interfaces
.implements Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/OverlayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OverlayChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/om/OverlayManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/om/OverlayManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/OverlayManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    return-void
.end method

.method public static synthetic lambda$onOverlaysChanged$0(Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;ZILjava/lang/String;)V
    .locals 18

    move-object/from16 v1, p0

    move/from16 v15, p2

    move-object/from16 v14, p3

    if-eqz p1, :cond_0

    iget-object v0, v1, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static/range {p3 .. p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v15, v2, v3, v4}, Lcom/android/server/om/OverlayManagerService;->access$1000(Lcom/android/server/om/OverlayManagerService;ILjava/util/List;ZZ)V

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v0, v15, v14}, Lcom/android/server/om/OverlayManagerService;->access$1100(Lcom/android/server/om/OverlayManagerService;ILjava/lang/String;)V

    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.OVERLAY_CHANGED"

    const-string/jumbo v3, "package"

    const/4 v4, 0x0

    invoke-static {v3, v14, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v13, v0

    const/high16 v0, 0x4000000

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "OverlayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "send broadcast "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v0, 0x0

    const/16 v16, 0x0

    move-object v4, v13

    move-object/from16 v17, v13

    move v13, v0

    move/from16 v14, v16

    move/from16 v15, p2

    :try_start_1
    invoke-interface/range {v2 .. v15}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v17, v13

    :goto_1
    return-void
.end method

.method public static synthetic lambda$onOverlaysChanged$1(Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;Ljava/lang/String;ILjava/lang/String;Landroid/content/om/ISamsungOverlayCallback;Z)V
    .locals 6

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v1}, Lcom/android/server/om/OverlayManagerService;->access$300(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, p2

    :goto_0
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    move-result-object v4

    invoke-virtual {v4, p3, v2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-boolean v5, v4, Landroid/content/pm/PackageInfo;->isSamsungThemeOverlay:Z

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    move v0, v5

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;->this$0:Lcom/android/server/om/OverlayManagerService;

    if-nez p4, :cond_3

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    goto :goto_3

    :cond_3
    :goto_2
    const/4 v3, 0x1

    :goto_3
    invoke-static {v1, p2, p1, v3}, Lcom/android/server/om/OverlayManagerService;->access$900(Lcom/android/server/om/OverlayManagerService;ILjava/lang/String;Z)V

    goto :goto_4

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_4
    const-string v0, "OverlayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onOverlaysChanged for overlay = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " target was null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    if-eqz p4, :cond_5

    if-nez p2, :cond_5

    :try_start_2
    invoke-interface {p4, p3, p5}, Landroid/content/om/ISamsungOverlayCallback;->overlayStateChanged(Ljava/lang/String;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6

    :cond_5
    :goto_5
    nop

    :goto_6
    return-void
.end method


# virtual methods
.method public onOverlaysChanged(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;ZI)V

    return-void
.end method

.method public onOverlaysChanged(Ljava/lang/String;Ljava/lang/String;ILandroid/content/om/ISamsungOverlayCallback;Z)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerService;->access$800(Lcom/android/server/om/OverlayManagerService;)V

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v8, Lcom/android/server/om/-$$Lambda$OverlayManagerService$OverlayChangeListener$vu-qzm3jlN-x0vi3Iy09ibHe21s;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p1

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/om/-$$Lambda$OverlayManagerService$OverlayChangeListener$vu-qzm3jlN-x0vi3Iy09ibHe21s;-><init>(Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;Ljava/lang/String;ILjava/lang/String;Landroid/content/om/ISamsungOverlayCallback;Z)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onOverlaysChanged(Ljava/lang/String;ZI)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "OverlayManager"

    const-string/jumbo v1, "onOverlaysChanged. Returning as targetPackageName is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerService;->access$800(Lcom/android/server/om/OverlayManagerService;)V

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/om/-$$Lambda$OverlayManagerService$OverlayChangeListener$VfIJ4NPWOTvOsdDTdtYzFGhmrAs;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/android/server/om/-$$Lambda$OverlayManagerService$OverlayChangeListener$VfIJ4NPWOTvOsdDTdtYzFGhmrAs;-><init>(Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;ZILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
