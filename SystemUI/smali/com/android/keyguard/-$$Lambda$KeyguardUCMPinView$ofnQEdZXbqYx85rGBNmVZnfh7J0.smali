.class public final synthetic Lcom/android/keyguard/-$$Lambda$KeyguardUCMPinView$ofnQEdZXbqYx85rGBNmVZnfh7J0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# instance fields
.field private final synthetic f$0:Lcom/android/keyguard/KeyguardUCMPinView;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardUCMPinView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUCMPinView$ofnQEdZXbqYx85rGBNmVZnfh7J0;->f$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iput p2, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUCMPinView$ofnQEdZXbqYx85rGBNmVZnfh7J0;->f$1:I

    return-void
.end method


# virtual methods
.method public final onChecked(ZI)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUCMPinView$ofnQEdZXbqYx85rGBNmVZnfh7J0;->f$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget v1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUCMPinView$ofnQEdZXbqYx85rGBNmVZnfh7J0;->f$1:I

    invoke-static {v0, v1, p1, p2}, Lcom/android/keyguard/KeyguardUCMPinView;->lambda$checkPassword$0(Lcom/android/keyguard/KeyguardUCMPinView;IZI)V

    return-void
.end method
