.class final Lio/teak/sdk/a/d$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/a/d;-><init>(Landroid/content/Context;Lio/teak/sdk/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lio/teak/sdk/a/d;


# direct methods
.method constructor <init>(Lio/teak/sdk/a/d;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lio/teak/sdk/a/d$3;->a:Lio/teak/sdk/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/teak/sdk/o;)V
    .locals 4
    .param p1    # Lio/teak/sdk/o;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 105
    iget-object v0, p1, Lio/teak/sdk/o;->a:Ljava/lang/String;

    const-string v1, "RemoteConfigurationEvent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    check-cast p1, Lio/teak/sdk/c/l;

    iget-object v0, p1, Lio/teak/sdk/c/l;->b:Lio/teak/sdk/a/e;

    .line 109
    iget-object v1, v0, Lio/teak/sdk/a/e;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lio/teak/sdk/a/d$3;->a:Lio/teak/sdk/a/d;

    invoke-static {v1}, Lio/teak/sdk/a/d;->a(Lio/teak/sdk/a/d;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "gcmSenderId"

    iget-object v3, v0, Lio/teak/sdk/a/e;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :cond_0
    iget-object v1, v0, Lio/teak/sdk/a/e;->d:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 115
    iget-object v1, p0, Lio/teak/sdk/a/d$3;->a:Lio/teak/sdk/a/d;

    invoke-static {v1}, Lio/teak/sdk/a/d;->a(Lio/teak/sdk/a/d;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "firebaseAppId"

    iget-object v0, v0, Lio/teak/sdk/a/e;->d:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_1
    iget-object v0, p0, Lio/teak/sdk/a/d$3;->a:Lio/teak/sdk/a/d;

    invoke-virtual {v0}, Lio/teak/sdk/a/d;->a()V

    .line 120
    :cond_2
    return-void
.end method
