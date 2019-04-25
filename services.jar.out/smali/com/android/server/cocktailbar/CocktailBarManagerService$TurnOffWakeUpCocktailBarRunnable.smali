.class final Lcom/android/server/cocktailbar/CocktailBarManagerService$TurnOffWakeUpCocktailBarRunnable;
.super Ljava/lang/Object;
.source "CocktailBarManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/CocktailBarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TurnOffWakeUpCocktailBarRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$TurnOffWakeUpCocktailBarRunnable;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerService;Lcom/android/server/cocktailbar/CocktailBarManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerService$TurnOffWakeUpCocktailBarRunnable;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$TurnOffWakeUpCocktailBarRunnable;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$400(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v1, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->wakeupCocktailBarInternal(ZII)V

    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_0

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManagerInternal;->setUserActivityTimeoutOverrideFromWindowManager(J)V

    :cond_0
    return-void
.end method
