.class Lcom/android/server/desktopmode/PackageStateManager$StateListener;
.super Lcom/android/server/desktopmode/StateManager$StateListener;
.source "PackageStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/PackageStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/PackageStateManager;


# direct methods
.method private constructor <init>(Lcom/android/server/desktopmode/PackageStateManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/PackageStateManager$StateListener;->this$0:Lcom/android/server/desktopmode/PackageStateManager;

    invoke-direct {p0}, Lcom/android/server/desktopmode/StateManager$StateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/desktopmode/PackageStateManager;Lcom/android/server/desktopmode/PackageStateManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/PackageStateManager$StateListener;-><init>(Lcom/android/server/desktopmode/PackageStateManager;)V

    return-void
.end method


# virtual methods
.method onDualModeSetDesktopModeInternal(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/desktopmode/PackageStateManager$StateListener;->this$0:Lcom/android/server/desktopmode/PackageStateManager;

    iget-object v1, p0, Lcom/android/server/desktopmode/PackageStateManager$StateListener;->this$0:Lcom/android/server/desktopmode/PackageStateManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/PackageStateManager;->access$500(Lcom/android/server/desktopmode/PackageStateManager;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/PackageStateManager;->access$600(Lcom/android/server/desktopmode/PackageStateManager;Lcom/android/server/desktopmode/State;)V

    iget-object v0, p0, Lcom/android/server/desktopmode/PackageStateManager$StateListener;->this$0:Lcom/android/server/desktopmode/PackageStateManager;

    const-string v1, "com.sec.android.desktopmode.uiservice.activity.TouchpadUiActivity"

    invoke-static {v0, v1, p1}, Lcom/android/server/desktopmode/PackageStateManager;->access$700(Lcom/android/server/desktopmode/PackageStateManager;Ljava/lang/String;Z)V

    return-void
.end method

.method onEmergencyModeChanged(Lcom/android/server/desktopmode/State;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/PackageStateManager$StateListener;->this$0:Lcom/android/server/desktopmode/PackageStateManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/PackageStateManager;->access$400(Lcom/android/server/desktopmode/PackageStateManager;)V

    return-void
.end method

.method onSetDesktopModeInternal(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/desktopmode/PackageStateManager$StateListener;->this$0:Lcom/android/server/desktopmode/PackageStateManager;

    iget-object v1, p0, Lcom/android/server/desktopmode/PackageStateManager$StateListener;->this$0:Lcom/android/server/desktopmode/PackageStateManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/PackageStateManager;->access$500(Lcom/android/server/desktopmode/PackageStateManager;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/PackageStateManager;->access$600(Lcom/android/server/desktopmode/PackageStateManager;Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method onUserChanged(Lcom/android/server/desktopmode/State;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/desktopmode/PackageStateManager$StateListener;->this$0:Lcom/android/server/desktopmode/PackageStateManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/PackageStateManager;->access$400(Lcom/android/server/desktopmode/PackageStateManager;)V

    iget-object v0, p0, Lcom/android/server/desktopmode/PackageStateManager$StateListener;->this$0:Lcom/android/server/desktopmode/PackageStateManager;

    const-string v1, "com.sec.android.desktopmode.uiservice.DesktopModeTile"

    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->IS_TABLET:Z

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/PackageStateManager;->access$700(Lcom/android/server/desktopmode/PackageStateManager;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/server/desktopmode/PackageStateManager$StateListener;->this$0:Lcom/android/server/desktopmode/PackageStateManager;

    const-string v1, "com.sec.android.desktopmode.uiservice.DesktopDisplayDesktopModeTile"

    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->IS_TABLET:Z

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/PackageStateManager;->access$700(Lcom/android/server/desktopmode/PackageStateManager;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/server/desktopmode/PackageStateManager$StateListener;->this$0:Lcom/android/server/desktopmode/PackageStateManager;

    const-string v1, "com.sec.android.desktopmode.uiservice.activity.TouchpadUiActivity"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/PackageStateManager;->access$700(Lcom/android/server/desktopmode/PackageStateManager;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/server/desktopmode/PackageStateManager$StateListener;->this$0:Lcom/android/server/desktopmode/PackageStateManager;

    invoke-static {v0, p1}, Lcom/android/server/desktopmode/PackageStateManager;->access$600(Lcom/android/server/desktopmode/PackageStateManager;Lcom/android/server/desktopmode/State;)V

    return-void
.end method
