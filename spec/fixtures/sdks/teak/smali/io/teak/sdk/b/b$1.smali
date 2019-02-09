.class final Lio/teak/sdk/b/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/b/b;->a(Landroid/content/Context;Lcom/firebase/jobdispatcher/JobParameters;)Ljava/util/concurrent/Callable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Lcom/firebase/jobdispatcher/JobParameters;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/firebase/jobdispatcher/JobParameters;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lio/teak/sdk/b/b$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lio/teak/sdk/b/b$1;->b:Lcom/firebase/jobdispatcher/JobParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 120
    .line 1124
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-lt v0, v3, :cond_1

    .line 1125
    iget-object v0, p0, Lio/teak/sdk/b/b$1;->a:Landroid/content/Context;

    const-string v3, "display"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 1126
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1127
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v5

    array-length v6, v5

    move v4, v2

    move v3, v2

    :goto_0
    if-ge v4, v6, :cond_4

    aget-object v0, v5, v4

    .line 1128
    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    .line 1129
    const/4 v7, 0x2

    if-ne v0, v7, :cond_0

    move v0, v1

    :goto_1
    or-int/2addr v3, v0

    .line 1127
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1129
    goto :goto_1

    .line 1133
    :cond_1
    iget-object v0, p0, Lio/teak/sdk/b/b$1;->a:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1135
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_2

    move v2, v1

    .line 1140
    :cond_2
    :goto_2
    if-eqz v2, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-string v2, "DeviceScreenState.SCREEN_ON"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1141
    :goto_3
    iget-object v2, p0, Lio/teak/sdk/b/b$1;->a:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1144
    iget-object v0, p0, Lio/teak/sdk/b/b$1;->b:Lcom/firebase/jobdispatcher/JobParameters;

    invoke-static {v0}, Lio/teak/sdk/b/b;->a(Lcom/firebase/jobdispatcher/JobParameters;)V

    .line 1147
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 120
    return-object v0

    .line 1140
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "DeviceScreenState.SCREEN_OFF"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    move v2, v3

    goto :goto_2
.end method
