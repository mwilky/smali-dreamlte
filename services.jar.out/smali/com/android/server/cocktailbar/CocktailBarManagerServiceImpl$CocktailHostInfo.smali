.class Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;
.super Ljava/lang/Object;
.source "CocktailBarManagerServiceImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CocktailHostInfo"
.end annotation


# instance fields
.field final callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

.field category:I

.field mPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

.field final token:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Ljava/lang/String;Lcom/samsung/android/cocktailbar/ICocktailHost;I)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    invoke-interface {p3}, Lcom/samsung/android/cocktailbar/ICocktailHost;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->token:Landroid/os/IBinder;

    iput p4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->category:I

    iput-object p2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->mPackageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->access$1300(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;->recordHostStart(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->token:Landroid/os/IBinder;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CocktailHostInfo : linkToDeath error"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    invoke-static {}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied : binder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->access$700(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "edge_enable"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.cocktailbar.intent.action.EDGE_APP_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x1000020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    invoke-static {v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->access$700(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->access$1400(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    invoke-static {v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->access$1300(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;->recordHostEnd(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    invoke-static {v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->access$1400(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    invoke-static {v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->access$1400(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/util/NoSuchElementException;->printStackTrace()V

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public isEqualBinder(Lcom/samsung/android/cocktailbar/ICocktailHost;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->token:Landroid/os/IBinder;

    invoke-interface {p1}, Lcom/samsung/android/cocktailbar/ICocktailHost;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public unlinkBinder()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->access$1300(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;->recordHostEnd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/util/NoSuchElementException;->printStackTrace()V

    :goto_0
    return-void
.end method
