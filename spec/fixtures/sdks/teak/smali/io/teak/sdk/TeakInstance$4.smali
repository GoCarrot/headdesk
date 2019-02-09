.class final Lio/teak/sdk/TeakInstance$4;
.super Lio/teak/sdk/b/e$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/TeakInstance;->setStringAttribute(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/teak/sdk/TeakInstance;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 188
    iput-object p2, p0, Lio/teak/sdk/TeakInstance$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lio/teak/sdk/TeakInstance$4;->b:Ljava/lang/String;

    invoke-direct {p0}, Lio/teak/sdk/b/e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/teak/sdk/b/e;)V
    .locals 3

    .prologue
    .line 191
    iget-object v0, p1, Lio/teak/sdk/b/e;->b:Lio/teak/sdk/b/g;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p1, Lio/teak/sdk/b/e;->b:Lio/teak/sdk/b/g;

    iget-object v1, p0, Lio/teak/sdk/TeakInstance$4;->a:Ljava/lang/String;

    iget-object v2, p0, Lio/teak/sdk/TeakInstance$4;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/b/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_0
    return-void
.end method
