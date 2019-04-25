.class final Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;
.super Ljava/lang/Object;
.source "CocktailBarManagerServiceContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SecurityPolicy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;


# direct methods
.method private constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)V

    return-void
.end method


# virtual methods
.method public enforceCallFromPackage(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->access$1100(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/app/AppOpsManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    return-void
.end method

.method public getEnabledGroupProfileIds(I)[I
    .locals 11

    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->getGroupParent(I)I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->access$1200(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    nop

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    move v7, v4

    move v4, v6

    :goto_0
    if-ge v4, v5, :cond_1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    add-int/lit8 v7, v7, 0x1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    new-array v8, v7, [I

    nop

    :goto_1
    if-ge v6, v5, :cond_3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    aput v10, v8, v4

    add-int/lit8 v4, v4, 0x1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    return-object v8

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getGroupParent(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->access$1300(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->getProfileParent(I)I

    move-result v0

    const/16 v1, -0xa

    if-eq v0, v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    return v1
.end method

.method public getProfileParent(I)I
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$SecurityPolicy;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->access$1200(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const/16 v2, -0xa

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
