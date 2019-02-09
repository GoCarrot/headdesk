.class final Lio/teak/sdk/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private synthetic a:Landroid/os/Bundle;

.field private synthetic b:Landroid/content/ComponentName;

.field private synthetic c:Landroid/content/Context;

.field private synthetic d:Ljava/util/Random;


# direct methods
.method constructor <init>(Landroid/os/Bundle;Landroid/content/ComponentName;Landroid/content/Context;Ljava/util/Random;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 273
    iput-object p1, p0, Lio/teak/sdk/i;->a:Landroid/os/Bundle;

    iput-object p2, p0, Lio/teak/sdk/i;->b:Landroid/content/ComponentName;

    iput-object p3, p0, Lio/teak/sdk/i;->c:Landroid/content/Context;

    iput-object p4, p0, Lio/teak/sdk/i;->d:Ljava/util/Random;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 275
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lio/teak/sdk/i;->a:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 276
    if-eqz p2, :cond_0

    .line 277
    const-string v1, "teakDeepLink"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v1, "closeSystemDialogs"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 280
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 282
    iget-object v0, p0, Lio/teak/sdk/i;->b:Landroid/content/ComponentName;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 283
    iget-object v0, p0, Lio/teak/sdk/i;->c:Landroid/content/Context;

    iget-object v2, p0, Lio/teak/sdk/i;->d:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method
