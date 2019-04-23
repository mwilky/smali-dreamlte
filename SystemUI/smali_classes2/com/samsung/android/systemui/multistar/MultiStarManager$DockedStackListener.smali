.class Lcom/samsung/android/systemui/multistar/MultiStarManager$DockedStackListener;
.super Landroid/view/IDockedStackListener$Stub;
.source "MultiStarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/systemui/multistar/MultiStarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DockedStackListener"
.end annotation


# instance fields
.field private mLastAdjustedForIme:Z

.field private mLastAdjustedForImeAnimDuration:J

.field private mLastDividerVisibility:Z

.field private mLastExists:Z

.field private mLastHomeStackResizable:Z

.field private mLastMinimized:Z

.field private mLastMinimizedAnimDuration:J

.field final synthetic this$0:Lcom/samsung/android/systemui/multistar/MultiStarManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/systemui/multistar/MultiStarManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager$DockedStackListener;->this$0:Lcom/samsung/android/systemui/multistar/MultiStarManager;

    invoke-direct {p0}, Landroid/view/IDockedStackListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/systemui/multistar/MultiStarManager;Lcom/samsung/android/systemui/multistar/MultiStarManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/multistar/MultiStarManager$DockedStackListener;-><init>(Lcom/samsung/android/systemui/multistar/MultiStarManager;)V

    return-void
.end method


# virtual methods
.method public notifyLastState()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager$DockedStackListener;->mLastDividerVisibility:Z

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/multistar/MultiStarManager$DockedStackListener;->onDividerVisibilityChanged(Z)V

    iget-boolean v0, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager$DockedStackListener;->mLastExists:Z

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/multistar/MultiStarManager$DockedStackListener;->onDockedStackExistsChanged(Z)V

    iget-boolean v0, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager$DockedStackListener;->mLastMinimized:Z

    iget-wide v1, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager$DockedStackListener;->mLastMinimizedAnimDuration:J

    iget-boolean v3, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager$DockedStackListener;->mLastHomeStackResizable:Z

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/systemui/multistar/MultiStarManager$DockedStackListener;->onDockedStackMinimizedChanged(ZJZ)V

    iget-boolean v0, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager$DockedStackListener;->mLastAdjustedForIme:Z

    iget-wide v1, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager$DockedStackListener;->mLastAdjustedForImeAnimDuration:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/systemui/multistar/MultiStarManager$DockedStackListener;->onAdjustedForImeChanged(ZJ)V

    return-void
.end method

.method public onAdjustedForImeChanged(ZJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager$DockedStackListener;->mLastAdjustedForIme:Z

    iput-wide p2, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager$DockedStackListener;->mLastAdjustedForImeAnimDuration:J

    iget-object v0, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager$DockedStackListener;->this$0:Lcom/samsung/android/systemui/multistar/MultiStarManager;

    invoke-static {v0}, Lcom/samsung/android/systemui/multistar/MultiStarManager;->access$600(Lcom/samsung/android/systemui/multistar/MultiStarManager;)Lcom/samsung/systemui/splugins/multistar/PluginDockedStackListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager$DockedStackListener;->this$0:Lcom/samsung/android/systemui/multistar/MultiStarManager;

    invoke-static {v0}, Lcom/samsung/android/systemui/multistar/MultiStarManager;->access$600(Lcom/samsung/android/systemui/multistar/MultiStarManager;)Lcom/samsung/systemui/splugins/multistar/PluginDockedStackListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/systemui/splugins/multistar/PluginDockedStackListener;->onAdjustedForImeChanged(ZJ)V

    :cond_0
    return-void
.end method

.method public onDividerVisibilityChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager$DockedStackListener;->mLastDividerVisibility:Z

    iget-object v0, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager$DockedStackListener;->this$0:Lcom/samsung/android/systemui/multistar/MultiStarManager;

    invoke-static {v0}, Lcom/samsung/android/systemui/multistar/MultiStarManager;->access$600(Lcom/samsung/android/systemui/multistar/MultiStarManager;)Lcom/samsung/systemui/splugins/multistar/PluginDockedStackListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager$DockedStackListener;->this$0:Lcom/samsung/android/systemui/multistar/MultiStarManager;

    invoke-static {v0}, Lcom/samsung/android/systemui/multistar/MultiStarManager;->access$600(Lcom/samsung/android/systemui/multistar/MultiStarManager;)Lcom/samsung/systemui/splugins/multistar/PluginDockedStackListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/multistar/PluginDockedStackListener;->onDividerVisibilityChanged(Z)V

    :cond_0
    return-void
.end method

.method public onDockSideChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager$DockedStackListener;->this$0:Lcom/samsung/android/systemui/multistar/MultiStarManager;

    invoke-static {v0}, Lcom/samsung/android/systemui/multistar/MultiStarManager;->access$600(Lcom/samsung/android/systemui/multistar/MultiStarManager;)Lcom/samsung/systemui/splugins/multistar/PluginDockedStackListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager$DockedStackListener;->this$0:Lcom/samsung/android/systemui/multistar/MultiStarManager;

    invoke-static {v0}, Lcom/samsung/android/systemui/multistar/MultiStarManager;->access$600(Lcom/samsung/android/systemui/multistar/MultiStarManager;)Lcom/samsung/systemui/splugins/multistar/PluginDockedStackListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/multistar/PluginDockedStackListener;->onDockSideChanged(I)V

    :cond_0
    return-void
.end method

.method public onDockedStackExistsChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager$DockedStackListener;->mLastExists:Z

    iget-object v0, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager$DockedStackListener;->this$0:Lcom/samsung/android/systemui/multistar/MultiStarManager;

    invoke-static {v0}, Lcom/samsung/android/systemui/multistar/MultiStarManager;->access$600(Lcom/samsung/android/systemui/multistar/MultiStarManager;)Lcom/samsung/systemui/splugins/multistar/PluginDockedStackListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager$DockedStackListener;->this$0:Lcom/samsung/android/systemui/multistar/MultiStarManager;

    invoke-static {v0}, Lcom/samsung/android/systemui/multistar/MultiStarManager;->access$600(Lcom/samsung/android/systemui/multistar/MultiStarManager;)Lcom/samsung/systemui/splugins/multistar/PluginDockedStackListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/multistar/PluginDockedStackListener;->onDockedStackExistsChanged(Z)V

    :cond_0
    return-void
.end method

.method public onDockedStackMinimizedChanged(ZJZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager$DockedStackListener;->mLastMinimized:Z

    iput-wide p2, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager$DockedStackListener;->mLastMinimizedAnimDuration:J

    iput-boolean p4, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager$DockedStackListener;->mLastHomeStackResizable:Z

    iget-object v0, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager$DockedStackListener;->this$0:Lcom/samsung/android/systemui/multistar/MultiStarManager;

    invoke-static {v0}, Lcom/samsung/android/systemui/multistar/MultiStarManager;->access$600(Lcom/samsung/android/systemui/multistar/MultiStarManager;)Lcom/samsung/systemui/splugins/multistar/PluginDockedStackListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/multistar/MultiStarManager$DockedStackListener;->this$0:Lcom/samsung/android/systemui/multistar/MultiStarManager;

    invoke-static {v0}, Lcom/samsung/android/systemui/multistar/MultiStarManager;->access$600(Lcom/samsung/android/systemui/multistar/MultiStarManager;)Lcom/samsung/systemui/splugins/multistar/PluginDockedStackListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/systemui/splugins/multistar/PluginDockedStackListener;->onDockedStackMinimizedChanged(ZJZ)V

    :cond_0
    return-void
.end method
