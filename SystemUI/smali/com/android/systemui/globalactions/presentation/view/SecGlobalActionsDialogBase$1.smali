.class Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$1;
.super Landroid/view/IRotationWatcher$Stub;
.source "SecGlobalActionsDialogBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->registerRotationWatcher()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;


# direct methods
.method constructor <init>(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    invoke-direct {p0}, Landroid/view/IRotationWatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRotationChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$1;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->forceRequestLayout()V

    return-void
.end method
