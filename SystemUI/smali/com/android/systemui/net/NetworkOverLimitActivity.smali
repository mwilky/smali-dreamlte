.class public Lcom/android/systemui/net/NetworkOverLimitActivity;
.super Landroid/app/Activity;
.source "NetworkOverLimitActivity.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static getLimitedDialogTitleForTemplate(Landroid/net/NetworkTemplate;)I
    .locals 2

    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const v0, 0x7f12027d

    return v0

    :cond_0
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_VZW_POPUP:Z

    if-eqz v0, :cond_1

    const v0, 0x7f120b3b

    goto :goto_0

    :cond_1
    const v0, 0x7f120b3a

    :goto_0
    return v0
.end method

.method public static synthetic lambda$onCreate$0(Lcom/android/systemui/net/NetworkOverLimitActivity;Landroid/net/NetworkTemplate;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/net/NetworkOverLimitActivity;->snoozePolicy(Landroid/net/NetworkTemplate;)V

    return-void
.end method

.method public static synthetic lambda$onCreate$1(Lcom/android/systemui/net/NetworkOverLimitActivity;Landroid/net/NetworkTemplate;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/net/NetworkOverLimitActivity;->snoozePolicy(Landroid/net/NetworkTemplate;)V

    return-void
.end method

.method public static synthetic lambda$onCreate$2(Lcom/android/systemui/net/NetworkOverLimitActivity;Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/net/NetworkOverLimitActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setDialogStateForInDisplayFingerprint(Z)V

    return-void
.end method

.method public static synthetic lambda$onCreate$4(Lcom/android/systemui/net/NetworkOverLimitActivity;Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/net/NetworkOverLimitActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setDialogStateForInDisplayFingerprint(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/net/NetworkOverLimitActivity;->finish()V

    return-void
.end method

.method private snoozePolicy(Landroid/net/NetworkTemplate;)V
    .locals 4

    const-string v0, "netpolicy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object v0

    :try_start_0
    invoke-interface {v0, p1}, Landroid/net/INetworkPolicyManager;->snoozeLimit(Landroid/net/NetworkTemplate;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "NetworkOverLimitActivity"

    const-string/jumbo v3, "problem snoozing network policy"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/systemui/net/NetworkOverLimitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkTemplate;

    new-instance v1, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    iput-object p0, p0, Lcom/android/systemui/net/NetworkOverLimitActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/net/NetworkOverLimitActivity;->getLimitedDialogTitleForTemplate(Landroid/net/NetworkTemplate;)I

    move-result v2

    const v3, 0x7f120b35

    const v4, 0x7f120b37

    const/high16 v5, 0x1040000

    new-instance v6, Lcom/android/systemui/net/-$$Lambda$NetworkOverLimitActivity$BabkV-4Kk4XbXe3BjpJJK8RmThs;

    invoke-direct {v6, p0, v0}, Lcom/android/systemui/net/-$$Lambda$NetworkOverLimitActivity$BabkV-4Kk4XbXe3BjpJJK8RmThs;-><init>(Lcom/android/systemui/net/NetworkOverLimitActivity;Landroid/net/NetworkTemplate;)V

    const/4 v7, 0x0

    sget-boolean v8, Lcom/android/systemui/Rune;->QPANEL_IS_VZW_POPUP:Z

    if-eqz v8, :cond_0

    const v3, 0x7f120b36

    const v4, 0x104000a

    const v5, 0x7f120b38

    const/4 v6, 0x0

    new-instance v7, Lcom/android/systemui/net/-$$Lambda$NetworkOverLimitActivity$uCmNmmLqe5znrAG-_C0KnPxRxVE;

    invoke-direct {v7, p0, v0}, Lcom/android/systemui/net/-$$Lambda$NetworkOverLimitActivity$uCmNmmLqe5znrAG-_C0KnPxRxVE;-><init>(Lcom/android/systemui/net/NetworkOverLimitActivity;Landroid/net/NetworkTemplate;)V

    :cond_0
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setTitle(I)V

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(I)V

    invoke-virtual {v1, v4, v6}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1, v5, v7}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v8, Lcom/android/systemui/net/-$$Lambda$NetworkOverLimitActivity$QXlvvfkIssCZX6gL4yaZMriFmFo;

    invoke-direct {v8, p0}, Lcom/android/systemui/net/-$$Lambda$NetworkOverLimitActivity$QXlvvfkIssCZX6gL4yaZMriFmFo;-><init>(Lcom/android/systemui/net/NetworkOverLimitActivity;)V

    invoke-virtual {v1, v8}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    new-instance v2, Lcom/android/systemui/net/-$$Lambda$NetworkOverLimitActivity$r4vRrSqmwyrUKdp1ZaWwFl2U-9o;

    invoke-direct {v2, p0}, Lcom/android/systemui/net/-$$Lambda$NetworkOverLimitActivity$r4vRrSqmwyrUKdp1ZaWwFl2U-9o;-><init>(Lcom/android/systemui/net/NetworkOverLimitActivity;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/net/NetworkOverLimitActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, 0x3e99999a    # 0.3f

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/16 v3, 0x50

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->show()V

    return-void
.end method
