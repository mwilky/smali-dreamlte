.class Lcom/android/systemui/popup/view/DataConnectionErrorDialog$3;
.super Ljava/lang/Object;
.source "DataConnectionErrorDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/popup/view/DataConnectionErrorDialog;->getPButtonClickListener()Landroid/content/DialogInterface$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/popup/view/DataConnectionErrorDialog;

.field final synthetic val$pButtonRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/popup/view/DataConnectionErrorDialog;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog$3;->this$0:Lcom/android/systemui/popup/view/DataConnectionErrorDialog;

    iput-object p2, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog$3;->val$pButtonRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/popup/view/DataConnectionErrorDialog$3;->val$pButtonRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
