.class final Lio/teak/sdk/f/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/f/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lio/teak/sdk/n;Lio/teak/sdk/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lio/teak/sdk/f/a;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 155
    iput-object p2, p0, Lio/teak/sdk/f/a$1;->a:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/teak/sdk/o;)V
    .locals 3
    .param p1    # Lio/teak/sdk/o;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 158
    instance-of v0, p1, Lio/teak/sdk/c/o;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lio/teak/sdk/f/a$1;->a:Ljava/util/HashMap;

    const-string v1, "id"

    check-cast p1, Lio/teak/sdk/c/o;

    iget-object v2, p1, Lio/teak/sdk/c/o;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :cond_0
    return-void
.end method
