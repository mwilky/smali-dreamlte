.class public Lcom/android/systemui/globalactions/util/ToastController;
.super Ljava/lang/Object;
.source "ToastController.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/util/ToastController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public showToast(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/ToastController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public showToast(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/ToastController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
