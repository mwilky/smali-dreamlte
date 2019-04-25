.class Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;
.super Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;
.source "CocktailBarUsageStateWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->registerUsageStatsWatcher()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mHideEdgeServiceComponentCache:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mVisible:Z

.field final synthetic this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;


# direct methods
.method constructor <init>(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-direct {p0}, Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->mHideEdgeServiceComponentCache:Ljava/util/HashSet;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->mVisible:Z

    return-void
.end method


# virtual methods
.method public notePauseComponent(Landroid/content/ComponentName;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public noteResumeComponent(Landroid/content/ComponentName;Landroid/content/Intent;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "resumeComponentName is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-static {v0}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->access$100(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "resumePackageName is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-static {v4}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->access$200(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/high16 v5, 0x10000

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_2

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v8, :cond_2

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object v7, v8

    :cond_2
    iget-object v8, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-static {v8}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->access$300(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)I

    move-result v8

    const/4 v9, 0x1

    and-int/2addr v8, v9

    const/4 v10, 0x0

    if-eqz v8, :cond_4

    if-nez v1, :cond_3

    iget-object v8, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-static {v8}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->access$400(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Ljava/util/HashSet;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v6, 0x0

    const/4 v1, 0x1

    :cond_3
    if-nez v1, :cond_4

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-static {v8}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->access$500(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Landroid/app/ActivityManager;

    move-result-object v8

    invoke-virtual {v8, v9, v9}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_4

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v9, v9, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v11, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-static {v11}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->access$400(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Ljava/util/HashSet;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v6, 0x0

    const/4 v1, 0x1

    :cond_4
    if-nez v1, :cond_8

    iget-object v8, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-static {v8}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->access$300(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)I

    move-result v8

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->mHideEdgeServiceComponentCache:Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_5

    const/4 v6, 0x0

    goto :goto_0

    :cond_5
    const/16 v8, 0x80

    :try_start_1
    invoke-virtual {v4, p1, v8}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v8

    iget-object v9, v8, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v9, :cond_6

    iget-object v9, v8, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    iget-object v11, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-static {v11}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->access$600(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    nop

    :cond_6
    move v9, v10

    if-eqz v9, :cond_7

    invoke-static {}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->access$000()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "noteResumeComponent: getActivityInfo="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object v12, v8, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->mHideEdgeServiceComponentCache:Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v6, 0x0

    :cond_7
    goto :goto_0

    :catch_0
    move-exception v8

    :try_start_2
    invoke-static {}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->access$000()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "noteResumeComponent: getActivityInfo not found. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_8
    :goto_0
    iget-boolean v8, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->mVisible:Z

    if-eq v8, v6, :cond_9

    iput-boolean v6, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->mVisible:Z

    iget-object v8, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-static {v8}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->access$700(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$OnCocktailBarWatcherListener;

    move-result-object v8

    invoke-interface {v8, v6}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$OnCocktailBarWatcherListener;->onChangeVisibleEdgeService(Z)V

    :cond_9
    iget-object v8, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-static {v8}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->access$300(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)I

    move-result v8

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-static {v8}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->access$800(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-static {v8}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->access$800(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    :cond_a
    iget-object v8, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-static {v8, v2}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->access$802(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;Ljava/lang/String;)Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;->this$0:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-static {v8}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->access$700(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$OnCocktailBarWatcherListener;

    move-result-object v8

    invoke-interface {v8, v2}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$OnCocktailBarWatcherListener;->onChangedResumePackage(Ljava/lang/String;)V

    :cond_b
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
