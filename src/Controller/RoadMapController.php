<?php

namespace App\Controller;

use App\Entity\RoadMap;
use App\Form\RoadMapType;
use App\Repository\RoadMapRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

#[Route('/roadmap')]
class RoadMapController extends AbstractController
{
    #[Route('/', name: 'app_road_map_index', methods: ['GET'])]
    public function index(RoadMapRepository $roadMapRepository): Response
    {
        return $this->render('road_map/index.html.twig', [
            'road_maps' => $roadMapRepository->findAll(),
        ]);
    }

    #[Route('/new', name: 'app_road_map_new', methods: ['GET', 'POST'])]
    public function new(Request $request, RoadMapRepository $roadMapRepository): Response
    {
        $roadMap = new RoadMap();
        $form = $this->createForm(RoadMapType::class, $roadMap);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $roadMapRepository->add($roadMap);
            return $this->redirectToRoute('app_road_map_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('road_map/new.html.twig', [
            'road_map' => $roadMap,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_road_map_show', methods: ['GET'])]
    public function show(RoadMap $roadMap): Response
    {
        return $this->render('road_map/show.html.twig', [
            'road_map' => $roadMap,
        ]);
    }

    #[Route('/{id}/edit', name: 'app_road_map_edit', methods: ['GET', 'POST'])]
    public function edit(Request $request, RoadMap $roadMap, RoadMapRepository $roadMapRepository): Response
    {
        $form = $this->createForm(RoadMapType::class, $roadMap);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $roadMapRepository->add($roadMap);
            return $this->redirectToRoute('app_road_map_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('road_map/edit.html.twig', [
            'road_map' => $roadMap,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_road_map_delete', methods: ['POST'])]
    public function delete(Request $request, RoadMap $roadMap, RoadMapRepository $roadMapRepository): Response
    {
        if ($this->isCsrfTokenValid('delete'.$roadMap->getId(), $request->request->get('_token'))) {
            $roadMapRepository->remove($roadMap);
        }

        return $this->redirectToRoute('app_road_map_index', [], Response::HTTP_SEE_OTHER);
    }
}
