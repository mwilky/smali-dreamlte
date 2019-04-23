.class Lcom/android/systemui/popup/view/FlightModeEnableDialog$2;
.super Ljava/lang/Object;
.source "FlightModeEnableDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/popup/view/FlightModeEnableDialog;->createDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/popup/view/FlightModeEnableDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/popup/view/FlightModeEnableDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/popup/view/FlightModeEnableDialog$2;->this$0:Lcom/android/systemui/popup/view/FlightModeEnableDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/popup/view/FlightModeEnableDialog$2;->this$0:Lcom/android/systemui/popup/view/FlightModeEnableDialog;

    invoke-static {v0}, Lcom/android/systemui/popup/view/FlightModeEnableDialog;->access$100(Lcom/android/systemui/popup/view/FlightModeEnableDialog;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
