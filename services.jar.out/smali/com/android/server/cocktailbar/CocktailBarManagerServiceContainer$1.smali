.class Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;
.super Landroid/content/BroadcastReceiver;
.source "CocktailBarManagerServiceContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;


# direct methods
.method constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->access$100(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->access$100(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    nop

    :goto_0
    if-ge v2, v3, :cond_1

    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {v4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->access$100(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->onConfigurationChanged()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v1

    goto/16 :goto_3

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    const-string v1, "android.intent.action.USER_STARTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v3, -0x2710

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->access$200(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;I)V

    goto/16 :goto_3

    :cond_3
    const-string v1, "android.intent.action.USER_STOPPED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->access$300(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;I)V

    goto/16 :goto_3

    :cond_4
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->onUserSwitched(I)V

    goto/16 :goto_3

    :cond_5
    const-string v1, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_6

    return-void

    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.app.cocktailbarservice"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->access$400(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_7
    goto :goto_3

    :cond_8
    invoke-static {}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->access$500()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onReceive : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->access$600(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;->onBroadcastReceived(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    :cond_9
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->access$100(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->getSendingUserId()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_c

    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {v4}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->access$100(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    nop

    :goto_1
    if-ge v2, v4, :cond_b

    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {v5}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->access$100(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    if-eqz v5, :cond_a

    invoke-virtual {v5, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->onBroadcastReceived(Landroid/content/Intent;)V

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_b
    goto :goto_2

    :cond_c
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->access$100(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    if-eqz v2, :cond_d

    invoke-virtual {v2, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->onBroadcastReceived(Landroid/content/Intent;)V

    :cond_d
    :goto_2
    monitor-exit v1

    :goto_3
    return-void

    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2
.end method
