from satyrus import SatAPI, Posiform

import xpress as xp
import numpy as np

class xpress(SatAPI):
    """\
    Satyrus API FICO® Xpress Interface
    """

    def solve(self, energy: Posiform, **params) -> tuple[dict, float]:
        """
        Parameters
        ----------
        energy: Posiform

        Returns
        -------
        dict[str, int]
            Problem Solution, mapping between variables and states
        float
            Solution's associated energy scalar value
        """
        x, Q, c = energy.qubo()

        V = np.array([xp.var(vartype=xp.binary, name=v) for v in x])

        P = xp.problem(*V, V @ Q @ V)
        P.solve()

        s = {v: int(P.getSolution(V[x[v]])) for v in x}
        e = P.getObjVal()

        return (s, e + c)

