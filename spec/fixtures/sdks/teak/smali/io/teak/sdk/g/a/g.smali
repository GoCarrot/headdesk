.class public Lio/teak/sdk/g/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/g/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .line 62
    const-string v0, "com.htc.launcher"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/teak/sdk/g/b;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 29
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.launcher.action.SET_NOTIFICATION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 32
    const-string v3, "com.htc.launcher.extra.COMPONENT"

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    const-string v3, "com.htc.launcher.extra.COUNT"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 35
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.launcher.action.UPDATE_SHORTCUT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    const-string v4, "packagename"

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    const-string v4, "count"

    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 42
    :try_start_0
    invoke-static {p1, v2}, Lio/teak/sdk/a;->b(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Lio/teak/sdk/g/b; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    .line 49
    :goto_0
    :try_start_1
    invoke-static {p1, v3}, Lio/teak/sdk/a;->b(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_1
    .catch Lio/teak/sdk/g/b; {:try_start_1 .. :try_end_1} :catch_1

    .line 55
    :goto_1
    if-nez v2, :cond_0

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lio/teak/sdk/g/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unable to resolve intent: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/teak/sdk/g/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :catch_0
    move-exception v2

    move v2, v1

    goto :goto_0

    .line 52
    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_1

    .line 58
    :cond_0
    return-void
.end method
