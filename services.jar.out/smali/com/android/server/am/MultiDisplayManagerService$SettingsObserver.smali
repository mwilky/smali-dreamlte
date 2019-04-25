.class Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "MultiDisplayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MultiDisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final mDexDeveloperModeUri:Landroid/net/Uri;

.field private final mDexLabsResizableWindowEnabledUri:Landroid/net/Uri;

.field private final mDexTouchPadUsingUri:Landroid/net/Uri;

.field private final mDisplayChooserDoNotShowAgainUri:Landroid/net/Uri;

.field private final mUriList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final mWinnerPocSubDisplayUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/am/MultiDisplayManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MultiDisplayManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    invoke-static {p1}, Lcom/android/server/am/MultiDisplayManagerService;->access$300(Lcom/android/server/am/MultiDisplayManagerService;)Lcom/android/server/am/MultiDisplayManagerService$H;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;->mUriList:Ljava/util/ArrayList;

    const-string/jumbo p1, "display_chooser_do_not_show_again"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;->mDisplayChooserDoNotShowAgainUri:Landroid/net/Uri;

    const-string/jumbo p1, "winner_poc_sub_display"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;->mWinnerPocSubDisplayUri:Landroid/net/Uri;

    const-string/jumbo p1, "labs_resizable_window_enabled"

    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;->mDexLabsResizableWindowEnabledUri:Landroid/net/Uri;

    const-string/jumbo p1, "launch_policy_developer_enabled"

    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;->mDexDeveloperModeUri:Landroid/net/Uri;

    const-string/jumbo p1, "touchpad_enabled"

    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;->mDexTouchPadUsingUri:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;->initSettings()V

    return-void
.end method

.method private initSettings()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    invoke-static {v0}, Lcom/android/server/am/MultiDisplayManagerService;->access$400(Lcom/android/server/am/MultiDisplayManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;->mUriList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;->mDisplayChooserDoNotShowAgainUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;->mUriList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;->mDexLabsResizableWindowEnabledUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;->mUriList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;->mDexTouchPadUsingUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;->mUriList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;->mDexDeveloperModeUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v2, v3, p0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0, v2}, Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;->readSettings(Landroid/net/Uri;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    if-nez p2, :cond_0

    const-string v0, "MultiDisplayManager"

    const-string v1, "SettingsObserver_onChange: uri is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;->readSettings(Landroid/net/Uri;)V

    return-void
.end method

.method readSettings(Landroid/net/Uri;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;->mDisplayChooserDoNotShowAgainUri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    invoke-static {v0}, Lcom/android/server/am/MultiDisplayManagerService;->access$400(Lcom/android/server/am/MultiDisplayManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "display_chooser_do_not_show_again"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    move v0, v2

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    invoke-static {v1}, Lcom/android/server/am/MultiDisplayManagerService;->access$500(Lcom/android/server/am/MultiDisplayManagerService;)Z

    move-result v1

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    invoke-static {v1, v0}, Lcom/android/server/am/MultiDisplayManagerService;->access$502(Lcom/android/server/am/MultiDisplayManagerService;Z)Z

    const-string v1, "MultiDisplayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SettingsObserver_readSettings: do_not_show="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", Callers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;->updateDesktopModeSettings(Landroid/net/Uri;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SettingsObserver{mUriList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateDesktopModeSettings(Landroid/net/Uri;)V
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;->mDexLabsResizableWindowEnabledUri:Landroid/net/Uri;

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    invoke-static {v2}, Lcom/android/server/am/MultiDisplayManagerService;->access$400(Lcom/android/server/am/MultiDisplayManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "labs_resizable_window_enabled"

    invoke-static {v2, v3, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    iget-object v3, v3, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mFreeformController:Lcom/android/server/am/FreeformController;

    invoke-virtual {v3, v2}, Lcom/android/server/am/FreeformController;->updateDexLabsPolicy(Z)V

    const-string v3, "MultiDisplayManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SettingsObserver_readSettings: isForcedResize="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-nez v0, :cond_3

    iget-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;->mDexDeveloperModeUri:Landroid/net/Uri;

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    invoke-static {v2}, Lcom/android/server/am/MultiDisplayManagerService;->access$400(Lcom/android/server/am/MultiDisplayManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "launch_policy_developer_enabled"

    invoke-static {v2, v3, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    iget-object v3, v3, Lcom/android/server/am/MultiDisplayManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mFreeformController:Lcom/android/server/am/FreeformController;

    invoke-virtual {v3, v2}, Lcom/android/server/am/FreeformController;->updateDexDeveloperMode(Z)V

    const-string v3, "MultiDisplayManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SettingsObserver_readSettings: isDexDeveloperMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-nez v0, :cond_5

    iget-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;->mDexTouchPadUsingUri:Landroid/net/Uri;

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    invoke-static {v2}, Lcom/android/server/am/MultiDisplayManagerService;->access$400(Lcom/android/server/am/MultiDisplayManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "touchpad_enabled"

    invoke-static {v2, v3, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    iget-object v2, v2, Lcom/android/server/am/MultiDisplayManagerService;->mMultiDisplayInternal:Lcom/android/server/wm/MultiDisplayManagerInternal;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/MultiDisplayManagerInternal;->setDexTouchPadUsing(Z)V

    const-string v2, "MultiDisplayManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SettingsObserver_readSettings: isDexTouchPadUsing="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method
