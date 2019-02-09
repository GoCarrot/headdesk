.class final Lio/teak/sdk/a/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/a/d;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/teak/sdk/n;)V
    .locals 6
    .param p1    # Lio/teak/sdk/n;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 68
    iget-object v0, p1, Lio/teak/sdk/n;->a:Ljava/lang/String;

    const-string v1, "DeepLinksReadyEvent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-static {}, Lio/teak/sdk/m;->a()Lio/teak/sdk/m;

    move-result-object v0

    .line 70
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 71
    const-string v2, "id"

    iget-object v3, v0, Lio/teak/sdk/m;->b:Lio/teak/sdk/a/a;

    iget-object v3, v3, Lio/teak/sdk/a/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v2, "deep_link_routes"

    invoke-static {}, Lio/teak/sdk/b/a;->a()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v2, "gocarrot.com"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/games/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lio/teak/sdk/m;->b:Lio/teak/sdk/a/a;

    iget-object v4, v4, Lio/teak/sdk/a/a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/settings.json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lio/teak/sdk/b/d;->a:Lio/teak/sdk/b/d;

    new-instance v5, Lio/teak/sdk/a/d$1$1;

    invoke-direct {v5, p0, v0}, Lio/teak/sdk/a/d$1$1;-><init>(Lio/teak/sdk/a/d$1;Lio/teak/sdk/m;)V

    invoke-static {v2, v3, v1, v4, v5}, Lio/teak/sdk/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lio/teak/sdk/b/d;Lio/teak/sdk/k$e;)V

    .line 97
    :cond_0
    return-void
.end method
