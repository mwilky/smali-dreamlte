.class public final synthetic Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/-$$Lambda$SettingsUtil$CFdKa3ZLeO1y8WEx-dVRVBqEfLs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/-$$Lambda$SettingsUtil$CFdKa3ZLeO1y8WEx-dVRVBqEfLs;->f$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;

    iput-boolean p2, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/-$$Lambda$SettingsUtil$CFdKa3ZLeO1y8WEx-dVRVBqEfLs;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/-$$Lambda$SettingsUtil$CFdKa3ZLeO1y8WEx-dVRVBqEfLs;->f$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;

    iget-boolean v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/-$$Lambda$SettingsUtil$CFdKa3ZLeO1y8WEx-dVRVBqEfLs;->f$1:Z

    invoke-static {v0, v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;->lambda$saveHunEnableToSharedPreferences$5(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;Z)V

    return-void
.end method
