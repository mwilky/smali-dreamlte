.class public final synthetic Lcom/android/systemui/recents/-$$Lambda$RecentsOnboarding$jX5fAVLCsrlZ3YPNYnpjrlrPFnY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/recents/RecentsOnboarding;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/RecentsOnboarding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/-$$Lambda$RecentsOnboarding$jX5fAVLCsrlZ3YPNYnpjrlrPFnY;->f$0:Lcom/android/systemui/recents/RecentsOnboarding;

    return-void
.end method


# virtual methods
.method public final onStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/-$$Lambda$RecentsOnboarding$jX5fAVLCsrlZ3YPNYnpjrlrPFnY;->f$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v0, p1}, Lcom/android/systemui/recents/RecentsOnboarding;->lambda$showTipPopup$1(Lcom/android/systemui/recents/RecentsOnboarding;I)V

    return-void
.end method
