.class public final synthetic Lcom/android/systemui/util/-$$Lambda$SettingsHelper$RxFKn0ieVjwrmKvvyKtE2hhaG_M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/util/SettingsHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/-$$Lambda$SettingsHelper$RxFKn0ieVjwrmKvvyKtE2hhaG_M;->f$0:Lcom/android/systemui/util/SettingsHelper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/-$$Lambda$SettingsHelper$RxFKn0ieVjwrmKvvyKtE2hhaG_M;->f$0:Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/util/SettingsHelper;->lambda$onUserSwitched$1(Lcom/android/systemui/util/SettingsHelper;)V

    return-void
.end method
