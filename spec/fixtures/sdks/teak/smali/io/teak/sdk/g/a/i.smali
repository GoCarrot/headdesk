.class public Lio/teak/sdk/g/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/g/a;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lio/teak/sdk/g/a/i;->a:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    const-string v0, "com.oppo.launcher"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/teak/sdk/g/b;
        }
    .end annotation

    .prologue
    .line 37
    iget v0, p0, Lio/teak/sdk/g/a/i;->a:I

    if-ne v0, p3, :cond_0

    .line 46
    :goto_0
    return-void

    .line 40
    :cond_0
    iput p3, p0, Lio/teak/sdk/g/a/i;->a:I

    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 1075
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1076
    const-string v1, "app_badge_count"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1077
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.android.badge/badge"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "setAppBadgeCount"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1079
    :catch_0
    move-exception v0

    new-instance v0, Lio/teak/sdk/g/b;

    const-string v1, "Unable to execute Badge By Content Provider"

    invoke-direct {v0, v1}, Lio/teak/sdk/g/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2055
    :cond_1
    if-nez p3, :cond_2

    .line 2056
    const/4 p3, -0x1

    .line 2058
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oppo.unsettledevent"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2059
    const-string v1, "pakeageName"

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2060
    const-string v1, "number"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2061
    const-string v1, "upgradeNumber"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2063
    invoke-static {p1, v0}, Lio/teak/sdk/a;->b(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
